package typer;

/**
 * Output of the Compiler
 * Holds the Data types before code generation
 * Utility functions for quickly checking that an Expr is X
 * For more complex logic such as passing by copy, or implicit casting,
 * Add the functionality to `typer.exprs.Expr`
 */
import haxe.macro.Expr;

typedef Module = {name:String, path:String, files:Array<HaxeFileType>, isMain:Bool, checksum:String}
typedef ImportType = {path:Array<String>, alias:String, doc:String}

typedef HaxeFileType = {
	name:String,
	imports:Array<ImportType>,
	defs:Array<TypeDefinition>,
	location:String,
	isMain:Bool
}; // location is the global path to the file

function isVoid(ct:ComplexType):Bool {
	if (ct == null)
		return true;
	return switch ct {
		case TPath(p): p.name == "Void" && p.pack.length == 0;
		default:
			false;
	}
}

function isLabel(e:Expr):Bool {
	return switch e.expr {
		case EMeta(s, _):
			return s.name == ":label";
		default:
			false;
	}
}

function getLabelName(e:Expr):String {
	return switch e.expr {
		case EMeta(s, e):
			if (s.name == ":label") {
				switch e.expr {
					case EConst(CString(s)):
						s;
					default:
						"";
				}
			} else {
				"";
			}
		default:
			"";
	}
}

function exprToStringValue(e:Expr):String {
	switch e.expr {
		case EConst(CString(s)):
			return s;
		default:
			throw "invalid expr for exprToString: " + e.expr;
	}
}

function escapeParens(expr:Expr):MacroExpr {
	return switch expr.expr {
		case EParenthesis(e):
			escapeParens(e);
		default:
			expr;
	}
}

function removeCoalAndCheckType(assign:Expr):MacroExpr {
	assign = escapeParens(assign);
	switch assign.expr {
		case ECheckType(e, _):
			assign = removeCoalAndCheckType(e);
		case EBinop(OpNullCoal, e, _):
			assign = e;
		default:
	}
	return assign;
}

function isInvalidComplexType(ct:ComplexType):Bool {
	if (ct == null)
		return true;
	return switch ct {
		case TPath(p):
			if (p.params != null) {
				for (param in p.params) {
					switch param {
						case TPType(t):
							if (isInvalidComplexType(t)) return true;
						default:
					}
				}
			}
			false;
		default:
			false;
	}
}

function translateStruct(e:Expr, fromType:GoType, toType:GoType, info:Info):MacroExpr {
	switch toType {
		case refType(_.get() => elem):
			toType = elem;
		default:
	}
	switch toType {
		case named(_, _, _, _):
			final underlying = getUnderlying(toType);
			switch underlying {
				case structType(fields):
					final expr = createNamedObjectDecl(fields, (field, _) -> macro e.$field, info);
					final toComplexType = toComplexType(toType, info);
					return macro(({
						final e = $e;
						($expr : $toComplexType);
					}));
				case refType(_.get() => elem):
					return translateStruct(e, fromType, elem, info);
				default:
					// return macro @:not_struct null;
					throw info.panic() + "not a struct: " + underlying;
			}
		case structType([]):
			return e;
		default:
			throw info.panic() + "struct is unnamed: " + toType;
	}
}

function anyInterfaceType():ComplexType
	return TPath({name: "AnyInterface", pack: ["stdgo"]});

function invalidComplexType():ComplexType
	return null;

function errorType():ComplexType
	return TPath({name: "Error", pack: ["stdgo"]});

function createWrapper(wrapperName:String, ct:ComplexType) {
	return macro class $wrapperName {
		public function new(__self__, __type__) {
			this.__self__ = __self__;
			this.__type__ = __type__;
		}

		public function __underlying__()
			return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer
				&& !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
				__type__);

		var __self__:$ct;
		var __type__:stdgo._internal.internal.reflect.Reflect._Type;
	};
}

function addLocalMethod(name:String, pos, meta:Metadata, doc, access:Array<Access>, fun:Function, staticExtension:TypeDefinition, wrapper:TypeDefinition,
		embedded:Bool, hasParams:Bool) {
	var isPointerArg = false;
	if (fun.args.length > 0 && meta != null && fun.args[0].meta != null) {
		for (meta in fun.args[0].meta) {
			if (meta.name == ":pointer") {
				fun.args[0].meta.remove(meta);
				isPointerArg = true;
				break;
			}
		}
	}
	final funcName = name;
	final staticArgs = fun.args.copy();
	if (isPointerArg) {
		/*final t = exprOfType(staticArgs[0].type);
			switch t {
				case TPath(p):
					switch p.params[0] { // Pointer<T>
						case TPType(t):
							final f:FunctionArg = {
								name: "____",
								type: access.indexOf(AMacro) == -1 ? t : TPath({
									name: "Expr",
									sub: "ExprOf",
									pack: ["haxe", "macro"],
									params: [TPType(t)]
								}),
							};
							//staticArgs.unshift(f);
						default:
					}
				default:
		}*/
	}
	final funcName = name;
	var staticFieldExpr:Expr = {expr: fun.expr.expr, pos: null};
	final staticFieldAccess = access.copy();
	staticFieldAccess.push(AStatic);
	if (staticFieldAccess.indexOf(APublic) == -1) {
		staticFieldAccess.remove(APrivate);
		staticFieldAccess.push(APublic);
	}
	// trace(staticArgs.map(arg -> printer.printFunctionArg(arg)));
	final staticField:Field = {
		name: funcName,
		pos: pos,
		meta: meta == null ? null : meta.copy(),
		doc: doc,
		access: staticFieldAccess,
		kind: FFun({
			args: staticArgs,
			ret: fun.ret,
			params: fun.params,
			expr: staticFieldExpr,
		})
	};
	// trace(printer.printField(staticField));
	final fieldRet = exprOfType(fun.ret);
	var fieldArgs = staticArgs.slice(staticExtension != null ? 1 : 0);
	// if (isPointerArg)
	//	fieldArgs.shift();
	for (i in 0...fieldArgs.length)
		fieldArgs[i] = {name: fieldArgs[i].name, type: exprOfType(fieldArgs[i].type)};

	final fieldCallArgs = fieldArgs.map(arg -> macro $i{arg.name});
	var e = macro @:_0 __self__;
	if (fieldArgs.length > 0 && isRestType(fieldArgs[fieldArgs.length - 1].type)) {
		fieldCallArgs[fieldCallArgs.length - 1] = macro...$e{fieldCallArgs[fieldCallArgs.length - 1]};
	}
	var e = if (isPointerArg) {
		macro $e.$funcName($a{fieldCallArgs});
	} else {
		macro $e.value.$funcName($a{fieldCallArgs});
	}
	if (!HaxeAst.isVoid(fieldRet))
		e = macro return $e;
	var paramIndex = 0;
	final fieldArgs = fieldArgs.copy();
	for (arg in fieldArgs) {
		if (arg.name.indexOf("__generic__") == 0)
			fieldArgs.remove(arg);
	}
	final field:Field = {
		name: funcName,
		access: hasParams ? [APublic] : [APublic, ADynamic],
		meta: meta == null ? null : meta.copy(),
		pos: pos,
		doc: doc,
		kind: hasParams ? FVar(TFunction(fieldArgs.map(arg -> TNamed(arg.name, arg.type)), fieldRet)) : FFun({
			args: fieldArgs,
			ret: fieldRet,
			expr: e,
		})
	};
	var wrapperFieldExists = false;
	if (wrapper != null) {
		for (wrapperField in wrapper.fields) {
			if (field.name == wrapperField.name) {
				wrapperFieldExists = true;
				break;
			}
		}
		if (!wrapperFieldExists)
			wrapper.fields.unshift(field);
	}
	if (staticExtension != null)
		staticExtension.fields.unshift(staticField);
}

function mapReturnToThrow(expr:Expr):MacroExpr {
	var f = null;
	f = expr -> {
		if (expr == null)
			return expr;
		return switch expr.expr {
			case EFunction(_, _):
				return expr;
			case EReturn(_):
				macro throw "__return__";
			default:
				haxe.macro.ExprTools.map(expr, f);
		}
	}
	return f(expr);
}

function compareComplexType(a:ComplexType, b:ComplexType):Bool {
	if (a == null || b == null)
		return false;
	switch a {
		case TPath(p):
			switch b {
				case TPath(p2):
					if (p.name != p2.name)
						return false;
					if (p.pack.length != p2.pack.length)
						return false;
					for (i in 0...p.pack.length) {
						if (p.pack[i] != p2.pack[i])
							return false;
					}
					return true;
				default:
					return false;
			}
		case TAnonymous(fields):
			switch b {
				case TAnonymous(fields2):
					if (fields.length != fields2.length)
						return false;
					for (i in 0...fields.length) {
						if (fields[i].name != fields2[i].name)
							return false;
						switch fields[i].kind {
							case FVar(t, e):
								switch fields2[i].kind {
									case FVar(t2, e):
										if (!compareComplexType(t, t2)) return false;
									default:
										return false;
								}
							default:
								return false;
						}
					}
					return true;
				default:
					return false;
			}
		default:
			trace("unknown compare complex type: " + a);
			return false;
	}
}

function isNull(e:Expr):Bool {
	switch e.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") return true;
				default:
			}
		default:
	}
	return false;
}

function passByCopy(fromType:GoType, y:Expr, info:Info):MacroExpr {
	if (y == null)
		return y;
	switch escapeCheckType(y).expr {
		case EBlock(_), ENew(_), EObjectDecl(_):
			return y;
		case EUnop(OpSpread, _, _):
			return y;
		default:
	}
	if (!isPointer(fromType) && !isRef(fromType)) {
		var isNamed = isNamed(fromType);
		if (fromType == null) {
			trace(info.panic(), "fromType is null");
		}
		switch fromType {
			case typeParam(_):
			case basic(basicKind):
				switch basicKind {
					case string_kind:
						function f(x) {
							return switch HaxeAst.escapeParens(x).expr {
								case ECheckType(e, _):
									f(e);
								case EConst(c):
									switch c {
										case CIdent(_):
											macro $y?.__copy__();
										default:
											macro $y;
									}
								default:
									macro $y?.__copy__();
							}
						}
						return f(y);
					default:
				}
			case signature(_, _, _, _):
			case interfaceType(_, _):
			case sliceType(_), mapType(_, _), chanType(_, _): // pass by ref
			case arrayType(_, _): // pass by copy
				y = macro $y?.__copy__();
			case structType(fields):
				final decl = createNamedObjectDecl(fields, (field, type) -> passByCopy(type, macro x.$field, info), info);
				y = macro {
					final x = $y;
					$decl;
				};
			case named(path, _, type, _, _):
				switch getUnderlying(type) {
					case pointerType(_), basic(_), signature(_, _, _, _), sliceType(_), mapType(_), chanType(_):
						return y;
					case structType(fields) if (path.indexOf("_struct_") != -1):
						final decl = createNamedObjectDecl(fields, (field, type) -> passByCopy(type, macro x.$field, info), info);
						final ct = toComplexType(fromType, info);
						return macro {
							final x = $y;
							($decl : $ct);
						};
					case invalidType:
						return y;
					default:
				}
				// trace(printer.printExpr(y), type);
				if (!isInterface(type) && !isAnyInterface(type) && !isPointer(type) && !isRef(type)) {
					switch y.expr {
						case EArray(_):
						default:
							y = macro $y?.__copy__();
					}
				}
			case invalidType, pointerType(_), previouslyNamed(_), refType(_), tuple(_, _):

			case _var(_, _):
		}
	}
	return y;
}

function complexTypeElem(ct:ComplexType, index:Int = 0):ComplexType {
	return switch ct {
		case TPath(p):
			if (p.params != null && p.params.length > 0) {
				switch p.params[index] {
					case TPType(t):
						t;
					default:
						ct;
				}
			} else {
				ct;
			}
		default:
			ct;
	}
}

function typeGoto(label:Expr):MacroExpr {
	return macro @:goto $label;

}
function exprOfType(t:ComplexType):ComplexType {
	if (t == null)
		return TPath({name: "Void", pack: []});
	switch t {
		case TPath(p):
			if (p.name == "Expr" && p.sub == "ExprOf" && p.params != null && p.params.length == 1 && p.pack.length == 2 && p.pack[0] == "haxe"
				&& p.pack[1] == "macro") {
				switch p.params[0] {
					case TPType(t):
						return t;
					default:
				}
			}
		default:
	}
	return t;
}

function destructureExpr(x:Expr, t:GoType):{x:Expr, t:GoType} {
	t = getUnderlying(t);
	if (isPointer(t)) {
		x = macro $x.value;
		t = getElem(t);
	}
	return {x: x, t: t};
}

function typeDeferReturn(info:Info, nullcheck:Bool):MacroExpr {
	return macro for (defer in __deferstack__) {
		if (defer.ran)
			continue;
		defer.ran = true;
		defer.f();
	};
}

function exprWillReturn(expr:Expr):Bool {
	if (expr == null)
		return false;
	return switch expr.expr {
		case EIf(_, eif, eelse): exprWillReturn(eif) && exprWillReturn(eelse);
		case EReturn(_): true;
		case EMeta(s, e):
			if (s.name == ":fallthrough") {
				true;
			} else {
				exprWillReturn(e);
			}
		case EBlock(exprs):
			for (expr in exprs) {
				if (exprWillReturn(expr))
					return true;
			}
			false;
		case ESwitch(_, cases, _):
			for (c in cases) {
				if (!exprWillReturn(c.expr))
					return false;
			}
			true;
		default:
			false;
	}
}

function opPrecedence(op:Binop):Int {
	return switch op {
		case OpMult, OpDiv, OpMod, OpShr, OpShl, OpAnd:
			5;
		case OpAdd, OpSub, OpOr, OpXor:
			4;
		case OpEq, OpNotEq, OpGt, OpGte, OpLt, OpLte:
			3;
		case OpBoolAnd:
			2;
		case OpBoolOr:
			1;
		default:
			throw "unknown operator";
	}
}

function addAbstractToField(ct:ComplexType, wrapperType:TypePath):Field {
	var name:String = "";
	switch ct {
		case TPath(p):
			name = p.name;
		default:
	}
	return {
		name: "__to_" + name,
		pos: null,
		meta: [{name: ":to", pos: null}],
		kind: FFun({
			args: [],
			ret: ct,
			expr: macro return new $wrapperType(this),
		}),
		access: [AInline],
	};
}

function alreadyExistsTypeDef(td:TypeDefinition, info:Info):Bool {
	for (def in info.data.defs) {
		if (def.name == td.name) {
			return true;
		}
	}
	return false;
}

function complexTypeToExpr(t:ComplexType):MacroExpr {
	switch t {
		case TPath(p):
			final pack = p.pack == null ? macro [] : macro $a{p.pack.map(p -> makeExpr(p))};
			return macro haxe.macro.Expr.ComplexType.TPath({
				name: ${makeExpr(p.name)},
				pack: $pack,
				sub: ${p.sub == null ? macro @:complextype_to_expr null : makeExpr(p.sub)}
			});
		default:
			throw "unsupported complexTypeToExpr: " + t;
	}
}

function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return StringTools.startsWith(name, "_") ? [] : (isField ? [APublic] : []);
}

function makeString(str:String, ?kind):MacroExpr {
	return toExpr(EConst(CString(str, kind)));
}

function typeParamDeclsToTypeParams(list:Array<TypeParamDecl>):Array<TypeParam> {
	return list.map(p -> TPType(TPath({name: p.name, pack: []})));
}

function createTempVars(vars:Array<Var>, short:Bool):MacroExpr {
	final vars2:Array<Var> = [];
	if (vars.length <= 1)
		return {expr: EVars(vars), pos: null};
	final names:Map<String, String> = [];
	function createTempName(i:Int):String
		return "__" + i;
	for (i in 0...vars.length) {
		final tempName = createTempName(i);
		final name = vars[i].name;
		names[tempName] = name;
		vars2.unshift({
			name: name,
			// type: v.type,
			expr: macro $i{tempName},
		});
		if (!short) {
			vars[i].expr = typer.exprs.Ident.replaceIdent(names, vars[i].expr);
			names[vars[i].name] = tempName;
		}
		vars[i].name = tempName;
	}
	final e:Expr = {expr: EVars(vars), pos: null};
	final e2:Expr = {expr: EVars(vars2), pos: null};
	return macro @:mergeBlock {
		$e;
		${e2};
	}
	// return vars2;
}

function hasBreak(expr:Expr):Bool {
	var f = null;
	var hasBreakBool = false;
	f = expr -> {
		if (expr == null || expr.expr == null)
			return;
		switch expr.expr {
			case EBreak:
				hasBreakBool = true;
				return;
			default:
				haxe.macro.ExprTools.iter(expr, f);
		}
	}
	f(expr);
	return hasBreakBool;
}

function continueInsideSwitch(expr:Expr):Bool {
	var hasContinue = false;
	var f = null;
	f = expr -> {
		if (expr == null)
			return null;
		return switch expr.expr {
			case EMeta(s, _):
				if (s.name == ":fallthrough" || s.name == ":jump") {
					expr;
				} else {
					haxe.macro.ExprTools.map(expr, f);
				}
			case EWhile(_, _, _), EFor(_, _):
				// new scope
				expr;
			case EContinue:
				hasContinue = true;
				macro {
					__continue__ = true;
					break;
				};
			default:
				haxe.macro.ExprTools.map(expr, f);
		}
	}
	expr.expr = f(expr).expr;
	return hasContinue;
}

function escapeCheckType(e:Expr):MacroExpr {
	return switch e.expr {
		case ECheckType(e, _), EParenthesis(e):
			escapeCheckType(e);
		default:
			e;
	}
}

function isRestType(t:ComplexType):Bool {
	return switch t {
		case TPath(p): p.name == "Rest" && p.pack != null && p.pack.length == 1 && p.pack[0] == "haxe";
		default:
			false;
	}
}

function isRestExpr(expr:Expr):Bool {
	if (expr == null)
		return false;
	return switch expr.expr {
		case EUnop(op, _, _):
			op == OpSpread;
		default:
			false;
	}
}

function mapExprArrayWithData<T>(el:Array<Expr>, data:T, f:(data:T, e:Expr) -> Expr):Array<Expr> {
	var ret = [];
	for (e in el)
		ret.push(f(data, e));
	return ret;
}

function mapExprWithData<T>(e:Expr, data:T, f:(data:T, e:Expr) -> Expr):MacroExpr {
	return {
		pos: e.pos,
		expr: switch (e.expr) {
			case EConst(_): e.expr;
			case EArray(e1, e2): EArray(f(data, e1), f(data, e2));
			case EBinop(op, e1, e2): EBinop(op, f(data, e1), f(data, e2));
			case EField(e, field): EField(f(data, e), field);
			case EParenthesis(e): EParenthesis(f(data, e));
			case EObjectDecl(fields):
				var ret = [];
				for (field in fields)
					ret.push({field: field.field, expr: f(data, field.expr), quotes: field.quotes});
				EObjectDecl(ret);
			case EArrayDecl(el): EArrayDecl(mapExprArrayWithData(el, data, f));
			case ECall(e, params): ECall(f(data, e), mapExprArrayWithData(params, data, f));
			case ENew(tp, params): ENew(tp, mapExprArrayWithData(params, data, f));
			case EUnop(op, postFix, e): EUnop(op, postFix, f(data, e));
			case EVars(vars):
				var ret = [];
				for (v in vars) {
					var v2:Var = {name: v.name, type: v.type, expr: opt(v.expr, data, f)};
					if (v.isFinal != null)
						v2.isFinal = v.isFinal;
					ret.push(v2);
				}
				EVars(ret);
			case EBlock(el): EBlock(mapExprArrayWithData(el, data, f));
			case EFor(it, expr): EFor(f(data, it), f(data, expr));
			case EIf(econd, eif, eelse): EIf(f(data, econd), f(data, eif), opt(eelse, data, f));
			case EWhile(econd, e, normalWhile): EWhile(f(data, econd), f(data, e), normalWhile);
			case EReturn(e): EReturn(opt(e, data, f));
			case EUntyped(e): EUntyped(f(data, e));
			case EThrow(e): EThrow(f(data, e));
			case ECast(e, t): ECast(f(data, e), t);
			case EIs(e, t): EIs(f(data, e), t);
			case EDisplay(e, dk): EDisplay(f(data, e), dk);
			case ETernary(econd, eif, eelse): ETernary(f(data, econd), f(data, eif), f(data, eelse));
			case ECheckType(e, t): ECheckType(f(data, e), t);
			case EContinue, EBreak:
				e.expr;
			case ETry(e, catches):
				var ret = [];
				for (c in catches)
					ret.push({name: c.name, type: c.type, expr: f(data, c.expr)});
				ETry(f(data, e), ret);
			case ESwitch(e, cases, edef):
				var ret = [];
				for (c in cases)
					ret.push({expr: opt(c.expr, data, f), guard: opt(c.guard, data, f), values: mapExprArrayWithData(c.values, data, f)});
				ESwitch(f(data, e), ret, edef == null || edef.expr == null ? edef : f(data, edef));
			case EFunction(kind, func):
				var ret = [];
				for (arg in func.args)
					ret.push({
						name: arg.name,
						opt: arg.opt,
						type: arg.type,
						value: opt(arg.value, data, f)
					});
				EFunction(kind, {
					args: ret,
					ret: func.ret,
					params: func.params,
					expr: f(data, func.expr)
				});
			case EMeta(m, e): EMeta(m, f(data, e));
		}
	};
}

function opt<T>(e:Null<Expr>, data:T, f:(data:T, Expr) -> Expr):Expr
	return e == null ? null : f(data, e);
