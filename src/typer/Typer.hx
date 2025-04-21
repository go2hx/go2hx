package typer;

// @:formatter off
import haxe.DynamicAccess; 
import haxe.io.Path; 
import haxe.macro.Expr; 
import shared.Util; 
import sys.io.File; 
import typer.GoAst.BasicKind;
import typer.Types;

// @:formatter on

function typeData(data:GoAst.DataType, instance:Compiler.CompilerInstanceData):Array<HaxeAst.Module> {
	final imports:Array<String> = [];
	final noCommentsBool = instance.noComments;
	var list:Array<HaxeAst.Module> = [];
	final hashMap:Map<UInt, Dynamic> = [];
	for (obj in data.typeList) {
		hashMap[obj.hash] = obj;
	}
	// module system
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
		list.push(Package.typePackage(pkg, instance, hashMap));
	}
	return list;
}

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

function addLocalMethod(name:String, pos, meta:Metadata, doc, access:Array<Access>, fun:Function, staticExtension:TypeDefinition,

		wrapper:TypeDefinition, embedded:Bool, hasParams:Bool) {
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
	var fieldArgs = staticArgs.slice(1);
	// if (isPointerArg)
	//	fieldArgs.shift();
	for (i in 0...fieldArgs.length)
		fieldArgs[i] = {name: fieldArgs[i].name, type: exprOfType(fieldArgs[i].type)};

	final fieldCallArgs = fieldArgs.map(arg -> macro $i{arg.name});
	var e = macro @:_0 __self__;
	/*if (isPointerArg) {
		fieldCallArgs.unshift(macro @:_1 __self__);
	}*/
	if (fieldArgs.length > 0 && isRestType(fieldArgs[fieldArgs.length - 1].type)) {
		fieldCallArgs[fieldCallArgs.length - 1] = macro...$e{fieldCallArgs[fieldCallArgs.length - 1]};
	}
	var e = if (isPointerArg) {
		macro $e.$funcName($a{fieldCallArgs});
	} else {
		macro $e.value.$funcName($a{fieldCallArgs});
	}
	if (!isVoid(fieldRet))
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
	wrapper.fields.unshift(field);
	staticExtension.fields.unshift(staticField);
} function exprOfType(t:ComplexType):ComplexType {

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
} function mapReturnToThrow(expr:Expr):Expr {

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
} function compareComplexType(a:ComplexType, b:ComplexType):Bool {

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



function typeGoto(label:Expr):Expr {
	return macro @:goto $label;
}



function typeStmtList(list:Array<typer.GoAst.Stmt>, info:Info, isFunc:Bool):ExprDef {

	if (isFunc) {
		info.localIdents = info.localIdents.copy();
		info.renameIdents = info.renameIdents.copy();
		info.classNames = info.classNames.copy();
	} else {
		info = info.copy();
	}
	var exprs:Array<Expr> = [];
	// add named return values
	if (isFunc) {
		if (info.returnNamed) {
			var vars:Array<Var> = [];
			for (i in 0...info.returnNames.length) {
				vars.push({
					name: info.returnNames[i],
					// type: info.returnComplexTypes[i],
					expr: defaultValue(info.returnTypes[i], info),
				});
			}
			exprs.unshift(toExpr(EVars(vars)));
		}
	}
	if (list != null) {
		exprs = exprs.concat([for (stmt in list) typer.stmts.Stmt.typeStmt(stmt, info)]);
	}
	if (list != null && info.global.gotoSystem && isFunc) {
		exprs = [macro stdgo._internal.internal.Macro.controlFlow($b{exprs})];
		if (false) {
			// experimental
			// return EBlock(exprs);
			final data = new ControlFlowData();
			data.global.cases.push(data.global.lastCase);
			var expr = controlFlowLabels(data, macro $b{exprs});
			expr = controlFlowJumps(data, expr);
			final ret = toExpr(typer.stmts.Return.typeReturnStmt({returnPos: 0, results: []}, info));
			data.global.cases[data.global.cases.length - 1].push(ret);
			final cases:Array<haxe.macro.Expr.Case> = [];
			for (i in 0...data.global.cases.length) {
				cases[i] = {
					values: [macro ${makeExpr(i)}],
					expr: macro $b{data.global.cases[i]},
				}
			}
			final switchExpr = toExpr(ESwitch(macro __case__, cases, macro {throw "control flow failed: " + __case__;}));
			exprs = [macro var __case__ = 0];
			exprs.push(macro while (true)
				$switchExpr);
			trace(printer.printExprs(exprs, " "));
		}
	}
	// trace(list != null, info.global.deferBool, isFunc);
	if (list != null && info.global.deferBool && isFunc) { // defer system
		final ret = toExpr(typer.stmts.Return.typeReturnStmt({returnPos: 0, results: []}, info));
		final e = ret;
		var catchBlock:Array<Expr> = [macro var exe:Dynamic = __exception__.native];
		catchBlock.push(macro if ((exe is haxe.ValueException)) exe = exe.value);
		catchBlock.push(macro if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
			if (__exception__.message == "__return__")
				throw "__return__";
			exe = stdgo.Go.toInterface(__exception__.message);
		});
		catchBlock.push(macro stdgo.Go.recover_exception = exe);
		switch e.expr {
			case EBlock(exprs):
				final last = exprs.pop();
				// trace(printer.printExpr(macro $b{exprs}));
				catchBlock.push(macro {
					function f() {
						try {
							$b{exprs.copy()};
						} catch (__exception__2) {
							var exe:Dynamic = __exception__2.native;
							if ((exe is haxe.ValueException))
								exe = exe.value;
							if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
								if (__exception__.message == "__return__")
									throw "__return__";
								exe = stdgo.Go.toInterface(__exception__.message);
							};
							stdgo.Go.recover_exception = exe;
							f();
						}
					}
					f();
				});
				exprs.push(macro if (stdgo.Go.recover_exception != null) {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				});
				exprs.push(last);
				catchBlock.push(macro if (stdgo.Go.recover_exception != null) {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				});
				catchBlock.push(last);
			// catchBlock = catchBlock.concat(exprs);
			default:
				catchBlock = catchBlock.concat([
					macro stdgo.Go.recover_exception != null ? {
						final e = stdgo.Go.recover_exception;
						stdgo.Go.recover_exception = null;
						throw e;
					} : $e
				]);
		}
		exprs.unshift(macro var __deferstack__:Array<{ran:Bool, f:Void->Void}> = []);
		// exprs.push(typeDeferReturn(info, true));
		exprs.push(ret);
		// recover
		final tryBool = true;
		if (tryBool) {
			final pos = 1 + (info.returnNamed ? 1 : 0);
			final trydef = macro try $b{exprs.slice(pos)} catch (__exception__) {
				$b{catchBlock};
			};
			// don't include recover and defer stack
			exprs = exprs.slice(0, pos);
			exprs.push(trydef);
		}
	}
	return EBlock(exprs);
} class ControlFlowCase {

	public var parent:ControlFlowCase;
	public var exprs:Array<Expr> = [];

	public function new(exprs:Array<Expr>, parent) {
		this.exprs = exprs;
		this.parent = parent;
	}
} class GlobalControlFlowData {

	public var cases:Array<Array<Expr>> = [];
	public var caseMap:Map<String, Int> = [];
	public var lastCase:Array<Expr> = [];

	public function new() {}
} class ControlFlowData {

	public var global = new GlobalControlFlowData();
	public var scopeIndex:Int = -1;

	public function new() {}

	public function copy() {
		final data = new ControlFlowData();
		data.global = global;
		data.scopeIndex = scopeIndex + 1;
		return data;
	}
} function createCaseIndex(scopeIndex:Int, count:Int):String {

	return '$scopeIndex.$count';
} function controlFlowLabels(data:ControlFlowData, e:Expr):Expr {

	return switch e.expr {
		case EBlock(exprs):
			for (i in 0...exprs.length) {
				switch exprs[i].expr {
					case EFor(it, expr):

					case EWhile(econd, e, true):
					default:
				}
				if (isLabel(exprs[i])) {
					data.global.lastCase = [exprs[i]];
					final labelName = getLabelName(exprs[i]);
					data.global.caseMap[labelName] = data.global.cases.push(data.global.lastCase) - 1;
					continue;
				}
				data.global.lastCase.push(exprs[i]);
			}
			return macro null;
		default:
			return mapExprWithData(e, data, controlFlowLabels);
	}
} function controlFlowJumps(data:ControlFlowData, e:Expr):Expr {

	return switch e.expr {
		default:
			return mapExprWithData(e, data, controlFlowJumps);
	}
} function controlFlow(data:ControlFlowData, e:Expr):Expr {

	return switch e.expr {
		case EBlock(exprs):
			macro $b{[for (expr in exprs) mapExprWithData(expr, data, controlFlow)]};
		case EMeta(s, e):
			switch s.name {
				case ":jump": // special goto for continue and break
					// labels are found out later
					// data.caseMap[exprToStringValue(s.params[0])];
				case ":goto": // jump to label
			}
			e;
		default:
			return mapExprWithData(e, data, controlFlow);
	}
} function isLabel(e:Expr):Bool {

	return switch e.expr {
		case EMeta(s, _):
			return s.name == ":label";
		default:
			false;
	}
} function getLabelName(e:Expr):String {

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
} /*
	func = function(expr:haxe.macro.Expr, inLoop:Bool, scopeIndex:Int,label:Expr,initLabelSet:Bool,previousLabel:Expr):Expr {
			return switch (expr.expr) {
				case EMeta(s, e):
					switch s.name {
						case ":recv":
							expr;
						case ":label":
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex,s.params[0],true,label)),
								pos: Context.currentPos(),
							};
						case ":jump":
							final name:Expr= s.params[0];
							final noJump = label == null ? false : exprToString(name) == exprToString(label);
							switch e.expr {
								case EContinue:
									if (noJump) {
										macro continue;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = false;
											break;
										}
									}
								case EBreak:
									if (noJump) {
										macro break;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = true;
											break;
										}
									}
								default:
									throw "invalid jump expr: " + new haxe.macro.Printer().printExpr(e);
							}
						case ":goto":
							macro {
								$i{selectName} = $e;
								${inLoop ? macro {$i{exitName} = true; break;} : macro continue};
							};
						default:
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel)),
								pos: Context.currentPos(),
							};
					}
				case EWhile(econd, e, normalWhile):
					expr.expr = EWhile(econd, func(e,true,scopeIndex, initLabelSet ? label : null,false,null), normalWhile);
					expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
					expr;
				case EFor(it, e):
					expr.expr = EFor(it, func(e,true,scopeIndex, initLabelSet ? label : null,false,null));
					expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
					expr;
				case EBlock(exprs):
					scopeIndex++;
					for (i in 0...exprs.length)
						exprs[i] = func(exprs[i], inLoop, scopeIndex,label,initLabelSet,previousLabel);
					expr.expr = EBlock(exprs);
					expr;
				case EIf(econd, eif, eelse):
					expr.expr = EIf(econd, func(eif, inLoop, scopeIndex,label,initLabelSet,previousLabel), eelse == null ? null : func(eelse, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EVars(v):
					if (scopeIndex == 0) {
						for (obj in v)
							obj.isFinal = false; // all vars need to be able to be reassigned
						vars = vars.concat(v);
						if (v.length == 1) {
							macro $i{v[0].name} = ${v[0].expr};

						} else {
							{
								expr: EBlock([for (v in vars) macro $i{v.name} = ${v.expr}]),
								pos: Context.currentPos(),
							};
						}
					} else {
						expr;
					}
				case ECall(e, params):
					var printer = new haxe.macro.Printer();
					final str = printer.printExpr(e);
					if (str == "stdgo.Go.cfor" || str == "Go.cfor") {
						var block = params.pop();
						block = func(block,true,scopeIndex,initLabelSet ? label : null,false,null);
						params.push(block);
						expr.expr = ECall(e, params);
						expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
						expr;
					}
					expr;
					default:
						expr;
				}
			}
			body = func(body, false, -1, macro "",false,null);
			switch body.expr {
				case EBlock(exprs):
					for (i in 0...exprs.length) {
						switch exprs[i].expr {
							case EMeta(s, e):
								switch s.name {
									case ":label":
										if (cases.length == 0) {
											// first case
											cases.push({values: [macro ""], expr: {expr: EBlock(exprs.slice(0, i)), pos: Context.currentPos()}});
										}
										cases.push({values: [s.params[0]], expr: {expr: EBlock(exprs.slice(i)), pos: Context.currentPos()}});

										switch e.expr { // takes out labled Vars statement from scoped block
											case EBlock(exprs2):
												if (exprs2.length == 1) {
													switch exprs2[0].expr {
														case EVars(_):
															exprs[i].expr = exprs2[0].expr;
														default:
													}
												}
											default:
										}
								}
							default:
						}
					}
					body.expr = EBlock(exprs);
				default:
			}
			if (cases.length == 0) {
				cases.push({values: [macro ""], expr: body});
			}
			for (i in 0...cases.length) {
				switch cases[i].expr.expr {
					case EBlock(exprs):
						final name = i == cases.length - 1 ? macro "" : cases[i + 1].values[0];
						exprs.push(macro $i{selectName} = $name);
						cases[i].expr.expr = EBlock(exprs);
					default:
				}
			}
			var switchStmt:Expr = {expr: ESwitch(macro $i{selectName}, cases, null), pos: Context.currentPos()};
			final v:Expr = {expr: EVars(vars), pos: Context.currentPos()};
			final e = macro {
				var $selectName = "";
				var $exitName = false;
				var $breakName = false;
				var $innerName = false;
				$v;
				@:pos(Context.currentPos()) do {
					$i{exitName} = false;
					$switchStmt;
				} while ($i{selectName} != "");
			};
			e.pos = Context.currentPos();
			if (ret != null) {
				switch e.expr {
					case EBlock(exprs):
						exprs.push(ret);
						e.expr = EBlock(exprs);
					default:
				}
			}
 */

function exprToStringValue(e:Expr):String {
	switch e.expr {
		case EConst(CString(s)):
			return s;
		default:
			throw "invalid expr for exprToString: " + e.expr;
	}
}



function escapeParensRaw(expr:GoAst.Expr):GoAst.Expr {

	return switch expr.id {
		case "ParenExpr":
			escapeParensRaw(expr.x);
		default:
			expr;
	}
} function escapeParens(expr:Expr):Expr {

	return switch expr.expr {
		case EParenthesis(e):
			escapeParens(e);
		default:
			expr;
	}
}

function removeCoalAndCheckType(assign:Expr):Expr {

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
function importClassName(name:String):String {

	name = nameAscii(name);
	final bool = isTitle(name);
	name = title(name);
	if (bool || isInvalidTitle(name)) {
		name = "T_" + name;
	}
	if (reservedClassNames.indexOf(name) != -1)
		name += "_";
	return name;
} function className(name:String, info:Info):String {

	name = nameAscii(name);
	if (info.renameClasses.exists(name))
		return info.renameClasses[name];
	if (info.global.renameClasses.exists(name))
		return info.global.renameClasses[name];

	if (name == "bool")
		return "Bool";

	if (!isTitle(name) || isInvalidTitle(name))
		name = "T_" + name;

	if (reservedClassNames.indexOf(name) != -1)
		name += "_";
	return name;
} function isInvalidTitle(name:String):Bool {

	final c = name.charAt(0);
	if ([for (i in 0...10 + 1) '$i'].indexOf(c) != -1)
		return true;
	if (c == "_")
		return true;
	return false;
} function isInvalidComplexType(ct:ComplexType):Bool {

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

function createTempVars(vars:Array<Var>, short:Bool):Expr {
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
			vars[i].expr = replaceIdent(names, vars[i].expr);
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
} function replaceIdent(names:Map<String, String>, e:Expr):Expr {

	return switch e.expr {
		case EConst(CIdent(s)):
			if (names.exists(s)) {
				macro $i{names[s]};
			} else {
				e;
			}
		default:
			mapExprWithData(e, names, replaceIdent);
	}
} function translateStruct(e:Expr, fromType:GoType, toType:GoType, info:Info):Expr {

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
} function createNamedObjectDecl(fields:Array<FieldType>, f:(field:String, type:GoType) -> Expr, info:Info):Expr {

	final objectFields:Array<ObjectField> = [];
	for (i in 0...fields.length) {
		final field = fields[i].name;
		if (fields[i].optional)
			continue;
		objectFields.push({
			field: field,
			expr: f(field, fields[i].type.get()),
		});
	}
	return toExpr(EObjectDecl(objectFields));
} // This is for implicit conversion

// explicit conversion: assignTranslate
function checkType(e:Expr, ct:ComplexType, fromType:GoType, toType:GoType, info:Info):Expr {
	// trace(fromType, toType);
	if (e != null) {
		switch e.expr {
			case EBinop(_, _, _):
				e = macro($e);
			case EConst(c):
				switch c {
					case CIdent(i):
						if (i == "null") {
							var value = defaultValue(toType, info);
							if (ct != null) {
								return macro($value : $ct);
							}
						}
					default:
				}
			default:
		}
	}
	if (isInterface(pointerUnwrap(fromType)) && !isInterface(pointerUnwrap(toType))) {
		if (isPointer(fromType) && !isPointer(toType)) {
			switch ct {
				case TPath(p):
					if (p.params != null) { // not an unsafe pointer
						switch p.params[0] {
							case TPType(t):
								ct = t;
							default:
						}
					}
				default:
			}
		}
		return macro(($e.__underlying__().value : Dynamic) : $ct);
	}
	if (isStruct(fromType) && isStruct(toType)) {
		return translateStruct(e, fromType, toType, info);
	}

	if (isPointerStruct(fromType) && isPointerStruct(toType)) {
		final ct = toComplexType(toType, info);
		final fromElem = getElem(fromType);
		final toElem = getElem(toType);
		switch ct {
			case TPath(p):
				final get = checkType(macro $e.value, toComplexType(fromElem, info), fromElem, toElem, info);
				final set = checkType(macro v, toComplexType(fromElem, info), toElem, fromElem, info);
				final child = checkType(macro p.ref, toComplexType(fromElem, info), toElem, fromElem, info);
				return macro {
					var p = new $p(() -> $get, null, false, $e);
					p.convert = v -> $set;
					p;
				};
			default:
				throw info.panic() + "struct type not tpath: " + ct;
		}
	}

	if (isPointer(fromType) && isPointer(toType)) {
		final ct = toComplexType(toType, info);
		final fromElem = getElem(fromType);
		final toElem = getElem(toType);
		switch ct {
			case TPath(p):
				var e = macro $e.value;
				final get = checkType(e, toComplexType(toElem, info), fromElem, toElem, info);
				final v = checkType(macro v, toComplexType(fromElem, info), toElem, fromElem, info);
				final set = checkType(macro $e = $v, toComplexType(toElem, info), fromElem, toElem, info);
				return macro new $p(() -> $get, v -> $set);
			default:
				throw info.panic() + "pointer not tpath: " + ct;
		}
	}
	if (isAnyInterface(toType))
		return e;
	// trace(fromType, toType, isNamed(fromType), isInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		return wrapperExpr(fromType, e, info);
	}
	// trace(fromType, toType);
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		e = wrapperExpr(fromType, e, info);
	}
	switch getUnderlying(toType) {
		case basic(unsafepointer_kind):
			if (fromType != toType) {
				e = toAnyInterface(e, toType, info);
			}
		case basic(uintptr_kind):
			if (fromType != toType) {
				e = macro(new stdgo.GoUIntptr($e) : $ct);
			}
		default:
			switch fromType {
				case basic(unsafepointer_kind):
					if (fromType != toType) {
						final rt = toReflectType(toType, info, [], false);
						e = macro $e.__convert__($rt);
					}
				default:
			}
	}

	return macro($e : $ct);
}


function translateEquals(x:Expr, y:Expr, typeX:GoType, typeY:GoType, op:Binop, info:Info):Expr {
	if (typeX == null || typeY == null)
		return toExpr(EBinop(op, x, y));
	switch typeX {
		case named(path, _, _, _):
			if (path == "reflect.Type") {
				var e = macro($x.string() : String) == ($y.string() : String);
				switch op {
					case OpNotEq:
						e = macro !($e);
					default:
				}
				return e;
			}
		default:
	}
	var nilExpr:Expr = null;
	var nilType:GoType = null;
	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						nilExpr = y;
						nilType = typeY;
					}
				default:
					final ct = toComplexType(typeX, info);
					if (ct != null) x = macro($x : $ct);
			}
		default:
	}
	switch y.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						nilExpr = x;
						nilType = typeX;
					}
				default:
					final ct = toComplexType(typeY, info);
					if (ct != null) y = macro($y : $ct);
			}
		default:
	}
	var value = nilExpr;
	if (value != null) {
		if (isNamed(nilType))
			nilType = getUnderlying(nilType);
		switch nilType {
			case refType(_):
				switch op {
					case OpEq:
						return macro({
							final value = $value;
							(value == null || (value : Dynamic).__nil__);
						});
					default:
						return macro({
							final value = $value;
							(value != null && ((value : Dynamic).__nil__ == null || (!(value : Dynamic).__nil__)));
						});
				}
			default:
		}
		if (isInterface(typeX) || isInterface(typeY)) {
			return toExpr(EBinop(op, x, y));
		}
		switch op {
			case OpEq:
				return macro $value == null;
			default:
				return macro $value != null;
		}
	}
	if (isInterface(typeX) || isInterface(typeY)) {
		if (isPointer(typeX))
			x = macro $x.value;
		if (isPointer(typeY))
			y = macro $y.value;
		if (!isAnyInterface(getElem(typeX)))
			x = toAnyInterface(x, typeX, info);
		if (!isAnyInterface(getElem(typeY)))
			y = toAnyInterface(y, typeY, info);
	}
	var t = getUnderlying(typeX);
	switch t {
		case structType(_), arrayType(_, _):
			return toExpr(EBinop(op, toAnyInterface(x, typeX, info, false), toAnyInterface(y, typeY, info, false)));
		case sliceType(_), refType(_):
			var run = true;
			if (isRef(t)) {
				switch getElem(t) {
					case sliceType(_):
						// pointer slice is redunant as slice acts already like a pointer
					default:
						run = false;
				}
			}
			if (run) {
				var e = macro($x == $y);
				switch op {
					case OpNotEq:
						return (macro !$e);
					default:
				}
			}
		default:
	}
	switch t {
		case arrayType(_, _):
			switch getUnderlying(typeY) {
				case arrayType(_, _):
					// set x and y to AnyInterface
					x = toAnyInterface(x, typeX, info, false);
					y = toAnyInterface(y, typeY, info, false);
					return toExpr(EBinop(op, x, y));
				default:
			}
		default:
	}
	return toExpr(EBinop(op, x, toExpr(EParenthesis(y))));
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
} function continueInsideSwitch(expr:Expr):Bool {

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
} function cforPostContinue(post:Expr, e:Expr):Expr {

	return switch e.expr {
		case EMeta({pos: _, name: ":fallthrough", params: null}, _):
			return e;
		case EFor(_, _), EWhile(_, _, _):
			return e;
		case EContinue:
			macro {
				$post;
				$e;
			};
		default:
			mapExprWithData(e, post, cforPostContinue);
	}
	return e;
} function castTranslate(obj:GoAst.Expr, e:Expr, info:Info):{expr:Expr, ok:Bool} {

	return switch obj.id {
		case "TypeAssertExpr":
			var obj:GoAst.TypeAssertExpr = obj;
			final t = typeof(obj.type, info, false);
			var value = defaultValue(t, info);
			{
				ok: true,
				expr: macro try {
					{_0: $e, _1: true};
				} catch (_) {
					{_0: $value, _1: false};
				}
			};
		case "UnaryExpr":
			var obj:GoAst.UnaryExpr = obj;
			var x = typer.exprs.Expr.typeExpr(obj.x, info);
			{expr: macro $x.__smartGet__(), ok: true};
		case "IndexExpr":
			var obj:GoAst.IndexExpr = obj;
			var index = typer.exprs.Expr.typeExpr(obj.index, info);
			var x = typer.exprs.Expr.typeExpr(obj.x, info);
			final ut = getUnderlying(typeof(obj.x, info, false));
			switch ut {
				case mapType(_.get() => var keyType, _):
					// something strange is not working here try assign translate instead
					index = assignTranslate(typeof(obj.index, info, false), keyType, index, info);
				// index = checkType(index, toComplexType(keyType, info), typeof(obj.index, info, false), keyType, info);
				default:
			}
			final t = getUnderlying(typeof(obj, info, false));
			final value = switch t {
				case tuple(_, _.get() => vars):
					defaultValue(vars[0], info);
				default:
					macro null;
			}
			{
				ok: true,
				expr: macro($x != null && $x.__exists__($index) ? {_0: $x[$index], _1: true} : {_0: $value, _1: false}),
			};
		default:
			{expr: e, ok: false};
	}
} function cleanType(type:GoType):GoType {

	if (type == null)
		return type;
	return switch type {
		case _var(_, _.get() => type):
			cleanType(type);
		default:
			type;
	}
} function argsTranslate(args:Array<FunctionArg>, block:Expr, argsFields:GoAst.FieldList, info:Info, recvArg):Expr {

	switch block.expr {
		case EBlock(exprs):
			if (recvArg != null && !isPointer(recvArg.vt)) {
				final name = recvArg.name;
				info.localIdents.push(name);
				final expr = passByCopy(recvArg.vt, macro $i{name}, info);
				final ct = recvArg.type;
				exprs.unshift(macro @:recv var $name:$ct = $expr);
			}
			for (arg in args) {
				switch arg.type {
					case TPath(p):
						if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe" && p.params != null && p.params.length == 1) {
							final name = arg.name;
							switch p.params[0] {
								case TPType(ct):
									// new stdgo.Slice<$ct>($i{name}.length, 0, ...$i{name}));
									exprs.unshift(macro var $name = new stdgo.Slice<$ct>($i{name}.length, 0, ...$i{name}));
								// exprs.unshift(macro var $name:stdgo.Slice<$ct> = $i{name}.toArray());
								default:
							}
						}
					default:
				}
			}
			block.expr = EBlock(exprs);
		default:
	}
	return block;
} function escapeCheckType(e:Expr):Expr {

	return switch e.expr {
		case ECheckType(e, _), EParenthesis(e):
			escapeCheckType(e);
		default:
			e;
	}
} function passByCopy(fromType:GoType, y:Expr, info:Info):Expr {

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
							return switch escapeParens(x).expr {
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
} function isRestType(t:ComplexType):Bool {

	return switch t {
		case TPath(p): p.name == "Rest" && p.pack != null && p.pack.length == 1 && p.pack[0] == "haxe";
		default:
			false;
	}
} function isRestExpr(expr:Expr):Bool {

	if (expr == null)
		return false;
	return switch expr.expr {
		case EUnop(op, _, _):
			op == OpSpread;
		default:
			false;
	}
} function getReturnTupleType(type:GoType):Array<GoType> {

	return switch type {
		case tuple(_, _.get() => vars):
			var index = 0;
			[
				for (i in 0...vars.length) {
					switch vars[i] {
						case _var(name, _.get() => type):
							type;
						default:
							vars[i];
					}
				}
			];
		default:
			throw "type is not a tuple: " + type;
	}
} function getReturnTupleNames(type:GoType):Array<String> {

	return switch type {
		case tuple(_, _.get() => vars):
			[
				for (i in 0...vars.length)
					"_" + i
			];
		default:
			throw "type is not a tuple: " + type;
	}
} function goTypesEqual(a:GoType, b:GoType, depth:Int) {

	if (depth > 20)
		return true;
	if (a == null || b == null)
		return true;
	return switch a {
		case structType(fields):
			switch b {
				case structType(fields2):
					if (fields.length != fields.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...fields.length) {
							if (fields[i].name != fields2[i].name
								|| !goTypesEqual(fields[i].type.get(), fields2[i].type.get(), depth + 1)) {
								bool = false;
								break;
							}
						}
						bool;
					}
				default:
					false;
			}
		case typeParam(_, params):
			switch b {
				case typeParam(_, params2):
					if (params.length != params2.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...params.length) {
							if (!goTypesEqual(params[i], params2[i], depth + 1)) {
								bool = false;
								break;
							}
						}
						bool;
					}

				default:
					false;
			}
		case signature(variadic, _.get() => params, _.get() => results, _):
			switch b {
				case signature(variadic2, _.get() => params2, _.get() => results2, _):
					if (variadic != variadic2 || params.length != params2.length || results.length != results2.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...params.length) {
							if (!goTypesEqual(params[i], params2[i], depth + 1)) {
								bool = false;
								break;
							}
						}
						if (bool) {
							for (i in 0...results.length) {
								if (!goTypesEqual(results[i], results[i], depth + 1)) {
									bool = false;
									break;
								}
							}
							bool;
						} else {
							false;
						}
					}
				default:
					false;
			}
		case _var(_, _.get() => t):
			switch b {
				case _var(_, _.get() => t2):
					goTypesEqual(t, t2, depth + 1);
				default:
					goTypesEqual(t, b, depth + 1);
			}
		case tuple(len, _.get() => vars):
			switch b {
				case tuple(len2, _.get() => vars2):
					if (len != len2 || vars.length != vars2.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...vars.length) {
							if (!goTypesEqual(vars[i], vars2[i], depth + 1)) {
								bool = false;
								break;
							}
						}
						bool;
					}
				default:
					false;
			}
		case basic(kind):
			switch b {
				case basic(kind2):
					kind == kind2;
				default:
					false;
			}
		case arrayType(_.get() => elem, len), chanType(len, _.get() => elem):
			switch b {
				case arrayType(_.get() => elem2, len2), chanType(len2, _.get() => elem2): a.getIndex() == b.getIndex() && len == len2 && goTypesEqual(elem,
						elem2, depth + 1);
				default:
					false;
			}
		case mapType(_.get() => key, _.get() => value):
			switch b {
				case mapType(_.get() => key2, _.get() => value2): goTypesEqual(key, key2, depth + 1) && goTypesEqual(value, value2, depth + 1);
				default:
					false;
			}
		case refType(_.get() => elem), pointerType(_.get() => elem), sliceType(_.get() => elem):
			switch b {
				case refType(_.get() => elem2), pointerType(_.get() => elem2), sliceType(_.get() => elem2): a.getIndex() == b.getIndex() && goTypesEqual(elem,
						elem2, depth
						+ 1);
				default:
					false;
			}
		case named(path, _, _, _), previouslyNamed(path):
			switch b {
				case named(path2, _, _, _), previouslyNamed(path2):
					path == path2;
				default:
					false;
			}
		case invalidType:
			a == b;
		case interfaceType(empty, methods):
			switch b {
				case interfaceType(empty2, methods2):
					if (empty && empty2) {
						true;
					} else {
						if (methods.length != methods2.length) {
							false;
						} else {
							var bool = true;
							for (i in 0...methods.length) {
								if (methods[i].name != methods2[i].name
									|| !goTypesEqual(methods[i].type.get(), methods2[i].type.get(), depth + 1)
									|| !goTypesEqual(methods[i].recv.get(), methods2[i].recv.get(), depth + 1)) {
									bool = false;
									break;
								}
							}
							bool;
						}
					}
				default:
					false;
			}
	}
} // This is for explicit conversion

// implicit conversion: checkType
function assignTranslate(fromType:GoType, toType:GoType, expr:Expr, info:Info, passCopy:Bool = true):Expr {
	if (goTypesEqual(fromType, toType, 0)) {
		if (passCopy) {
			return passByCopy(toType, expr, info);
		}
		return expr;
	}
	fromType = cleanType(fromType);
	toType = cleanType(toType);
	var y = expr;

	if (fromType == null)
		return expr;

	switch fromType {
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					if (!isNamed(toType)) {
						return defaultValue(toType, info);
					} else {
						return macro null;
					}
				default:
			}
		default:
	}

	if (passCopy && toType != null)
		y = passByCopy(toType, y, info);

	if (isAnyInterface(toType) && !isRestExpr(expr)) {
		y = toAnyInterface(y, fromType, info);
	}
	// trace(fromType, toType);
	if (isAnyInterface(fromType) && !isInvalid(toType) && !isInterface(toType)) {
		switch expr.expr {
			case EBinop(_, _, _):
			default:
				final ct = toComplexType(toType, info);
				if (ct != null) {
					y = macro($y.value : $ct);
				}
		}
	}
	if (isStruct(fromType) && isStruct(toType)) {
		var equal = false;
		var fromType = fromType;
		var toType = toType;
		switch fromType {
			case refType(_.get() => elem):
				fromType = elem;
			default:
		}
		switch toType {
			case refType(_.get() => elem):
				toType = elem;
			default:
		}
		switch fromType {
			case named(path, _, _):
				switch toType {
					case named(path2, _, _):
						equal = path == path2;
					default:
				}
			default:
		}
		if (!equal)
			return translateStruct(expr, fromType, toType, info);
	}
	// trace(toType);
	// trace(getUnderlying(getUnderlying(fromType)));
	// trace(fromType);
	// trace(isNamed(fromType), !isInterface(fromType), isInterface(toType), !isAnyInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		y = wrapperExpr(fromType, y, info);
		return y;
	}
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		y = wrapperExpr(fromType, y, info);
		return y;
	}
	switch fromType {
		case tuple(_, _.get() => vars):
			switch toType {
				case tuple(_, _.get() => vars2):
					final fields:Array<ObjectField> = [
						for (i in 0...vars.length) {
							final fieldName = "_" + i;
							{field: fieldName, expr: assignTranslate(vars[i], vars2[i], macro __tmp__.$fieldName, info, false)};
						}
					];
					final obj = toExpr(EObjectDecl(fields));
					return macro({
						@:assignTranslate final __tmp__ = $y;
						$obj;
					});
				default:
			}
		default:
	}
	return y;
} function wrapperExpr(t:GoType, y:Expr, info:Info):Expr {

	var self = y;
	var selfPointer = false;
	if (isPointer(t)) {
		selfPointer = true;
		t = getElem(t);
		self = macro $y.value;
	} else if (isRef(t)) {
		t = getElem(t);
	}
	switch t {
		case named(name, methods, type, alias, params):
			if (!alias && methods.length == 0 && !isStruct(type))
				return y;
			if (type == invalidType)
				return y;
			if (isInterface(type)) {
				return selfPointer ? self : y;
			}
			return macro stdgo.Go.asInterface($y);
		default:
	}
	return y;
} function replaceInvalidType(t:GoType, replace:GoType):GoType {

	return switch t {
		case _var(name, _.get() => type):
			final type = replaceInvalidType(type, replace);
			_var(name, {get: () -> type});
		case pointerType(_.get() => elem):
			final elem = replaceInvalidType(elem, replace);
			pointerType({get: () -> elem});
		case refType(_.get() => elem):
			switch elem {
				case invalidType, named(_, _, invalidType, _, _):
					if (isRefValue(replace)) {
						refType({get: () -> elem});
					} else {
						pointerType({get: () -> elem});
					}
				default:
					final elem = replaceInvalidType(elem, replace);
					refType({get: () -> elem});
			}
		case named(path, methods, type, alias, params):
			type = replaceInvalidType(type, replace);
			named(path, methods, type, alias, params);
		case invalidType:
			replace;
		default:
			t;
	}
} function isTypeParam(t:GoType):Bool {

	return switch t {
		case _var(_, _.get() => t):
			isTypeParam(t);
		case typeParam(_, _):
			true;
		default:
			false;
	}
} function nonAssignToken(tok:GoAst.Token):GoAst.Token {

	return switch tok {
		case ADD_ASSIGN: ADD;
		case SUB_ASSIGN: SUB;
		case MUL_ASSIGN: MUL;
		case QUO_ASSIGN: QUO;
		case REM_ASSIGN: REM;
		case SHL_ASSIGN: SHL;
		case SHR_ASSIGN: SHR;
		case XOR_ASSIGN: XOR;
		case AND_ASSIGN: AND;
		case AND_NOT_ASSIGN: AND_NOT;
		case OR_ASSIGN: OR;
		default: throw "non assign token: " + tok;
	}
} 

function orderOperations(inits:Array<Expr>, exprs:Array<Expr>):Array<Expr> {

	var initsCount = inits.length;
	for (i in 0...exprs.length) {
		switch exprs[i].expr {
			case EBinop(OpAssign, {expr: EArray(v, index), pos: _}, e2):
				final tmpNameVar = "__tmp__" + initsCount++;
				final tmpNameIndex = "__tmp__" + initsCount++;
				inits.push(macro final $tmpNameVar = $v);
				inits.push(macro final $tmpNameIndex = $index);
				exprs[i] = macro $i{tmpNameVar}[$i{tmpNameIndex}] = ${e2};
			default:
		}
	}
	return inits.concat(exprs);
} function isSelfAssignValue(x:Expr, y:Expr):Bool {

	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					switch y.expr {
						case EConst(c):
							switch c {
								case CIdent(s2):
									if (s == s2) return true;
								default:
							}
						default:
					}
				default:
			}
		default:
	}
	return false;
} function removeStrParens(s:String):String {

	if (s.charAt(0) == "(")
		s = s.substr(1);
	if (s.charAt(s.length - 1) == ")")
		s = s.substr(0, s.length - 1);
	return s;
}

function resultsToReturnValue(results:Array<GoType>, info:Info):Expr {

	if (results.length == 0)
		return macro return;
	if (results.length == 1)
		return macro return ${defaultValue(results[0], info)};
	// multireturn
	final expr = toExpr(EObjectDecl([
		for (i in 0...results.length) {
			{
				field: "_" + i,
				expr: defaultValue(results[i], info),
			};
		}
	]));
	return expr;
} function typeExprType(expr:Dynamic, info:Info):ComplexType { // get the type of an expr

	// typeof -> toComplexType
	if (expr == null)
		return null;
	// prevent typeExprType from being used
	final t = typeof(expr, info, false);
	var ct = toComplexType(t, info);
	if (ct == null)
		return TPath({name: "NullType", pack: []});
	switch ct {
		case TPath(p):
			if (expr.id == "Ellipsis") {
				ct = TPath({
					name: "Rest",
					pack: ["haxe"],
					params: p.params,
				});
			}
		default:
	}
	return ct;

	var type = switch expr.id {
		case "UnaryExpr": unaryType(expr, info);
		case "MapType": mapTypeExpr(expr, info);
		case "ChanType": chanTypeExpr(expr, info);
		case "InterfaceType": interfaceTypeExpr(expr, info);
		case "StructType": structTypeExpr(expr, info);
		case "FuncType": funcType(expr, info);
		case "ArrayType": arrayTypeExpr(expr, info);
		case "StarExpr": starType(expr, info); // pointer
		case "Ident": identType(expr, info); // identifier type
		case "SelectorExpr": selectorType(expr, info); // path
		case "Ellipsis": ellipsisType(expr, info); // Rest arg
		case "ParenExpr": return typeExprType(expr.x, info);
		case "IndexExpr": return indexType(expr, info); // t type
		case "IndexListExpr": return indexListType(expr, info);
		case "BinaryExpr": return binaryType(expr, info); // Union type
		case "HashType": return typeExprType(hashTypeToExprType(expr, info), info);
		case "BasicLit": return toComplexType(typeof(expr.type, info, false, []), info);
		default:
			throw info.panic() + "Type expr unknown: " + expr.id;
			null;
	}
	// if (type == null)
	//	throw "Type expr is null: " + expr.id;
	return type;
} // TYPE EXPR

function binaryType(expr:GoAst.BinaryExpr, info:Info):ComplexType {
	function rec(e:GoAst.Expr):Array<ComplexType> {
		switch e.id {
			case "BinaryExpr":
				return rec(e.x).concat(rec(e.y));
			default:
				return [typeExprType(e, info)];
		}
	}
	final params = rec(expr);
	return TFunction(params, TPath({name: "Void", pack: []}));
} function indexListType(expr:GoAst.IndexListExpr, info:Info):ComplexType {

	final ct = typeExprType(expr.x, info);
	switch ct {
		case TPath(p):
			p.params = expr.indices.map(e -> TPType(typeExprType(e, info)));
		default:
	}
	return ct;
} function indexType(expr:GoAst.IndexExpr, info:Info):ComplexType {

	final ct = typeExprType(expr.x, info);
	switch ct {
		case TPath(p):
			final index = typeExprType(expr.index, info);
			p.params = [TPType(index)];
		default:
	}
	return ct;
} function unaryType(expr:GoAst.UnaryExpr, info:Info):ComplexType {

	return typeExprType(expr.x, info);
} function mapTypeExpr(expr:GoAst.MapType, info:Info):ComplexType {

	var keyType = typeExprType(expr.key, info);
	var valueType = typeExprType(expr.value, info);
	if (keyType == null || valueType == null)
		return null;
	return TPath({
		name: "GoMap",
		pack: ["stdgo"],
		params: [TPType(keyType), TPType(valueType)],
	});
} function chanTypeExpr(expr:GoAst.ChanType, info:Info):ComplexType {

	var type = typeExprType(expr.value, info);
	return TPath({
		name: "Chan",
		pack: ["stdgo"],
		params: [TPType(type)],
	});
} function interfaceTypeExpr(expr:GoAst.InterfaceType, info:Info):ComplexType {

	if (expr.methods.list.length == 0) {
		// dynamic
		return anyInterfaceType();
	} else {
		// anonymous struct
		var fields = typeFieldListFields(expr.methods, info, [], false);
		return TAnonymous(fields);
	}
} function structTypeExpr(expr:GoAst.StructType, info:Info):ComplexType {

	if (expr.fields == null || expr.fields.list == null) // || expr.fields.list.length == 0)
		return invalidComplexType();
	var fields = typeFieldListFields(expr.fields, info, [], false);
	return TAnonymous(fields);
} function funcType(expr:GoAst.FuncType, info:Info):ComplexType {

	var ret = typeFieldListReturn(expr.results, info, false);
	var params = typeFieldListComplexTypes(expr.params, info);
	if (ret == null || params == null)
		return TFunction([], TPath({name: "Void", pack: []}));
	return TFunction(params, ret);
} function arrayTypeExpr(expr:GoAst.ArrayType, info:Info):ComplexType {

	// array is pass by copy, slice is pass by ref except for its length
	var type = typeExprType(expr.elt, info);
	if (expr.len != null) {
		// array
		var len:Expr = null;
		switch expr.len.id {
			case "BasicLit":
				len = toExpr(EConst(CInt(expr.len.value)));
			case "Ellipsis":
				len = toExpr(EConst(CInt("0")));
			default:
				len = typer.exprs.Expr.typeExpr(expr.len, info);
				len = macro($len : stdgo.GoInt).toBasic();
		}
		return TPath({
			pack: ["stdgo"],
			name: "GoArray",
			params: type != null ? [TPType(type), TPExpr(len)] : [],
		});
	}
	// slice
	return TPath({
		pack: ["stdgo"],
		name: "Slice",
		params: type != null ? [TPType(type)] : []
	});
} function starType(expr:GoAst.StarExpr, info:Info):ComplexType { // pointer type

	var type = typeExprType(expr.x, info);
	var t = typeof(expr.x, info, false);
	if (isRefValue(t)) {
		return TPath({
			pack: ["stdgo"],
			name: "Ref",
			params: type != null ? [TPType(type)] : [],
		});
	}

	return TPath({
		pack: ["stdgo"],
		name: "Pointer",
		params: type != null ? [TPType(type)] : [],
	});
} function identType(expr:GoAst.Ident, info:Info):ComplexType {

	var name = className(expr.name, info);
	if (!info.renameClasses.exists(expr.name) && !info.global.renameClasses.exists(name)) {
		for (t in basicTypes) {
			if (name == "T_" + t) {
				name = "Go" + title(name.substr(2));
				if (name.substr(2, 2) == "Ui") {
					name = "GoUI" + name.substr(4);
				}
				if (name == "GoString") {
					return TPath({
						pack: ["stdgo"],
						name: "GoString",
					});
				}
				return TPath({
					pack: ["stdgo"],
					name: name,
				});
			}
		}
		final basicType = classToBuiltinTypePath(expr.name, info);
		if (basicType != null)
			return TPath(basicType);
	}
	if (StringTools.startsWith(name, "T__struct_") && expr.type != null) {
		final type = hashTypeToExprType(expr.type, info);
		if (type.underlying != null) {
			info.locals[type.underlying.hash] = typeof(type, info, false);
		}
	}
	return TPath({
		pack: [],
		name: name,
		sub: null,
	});
} function classToBuiltinTypePath(name:String, info:Info):TypePath {

	return switch name {
		case "error":
			{
				pack: ["stdgo"],
				name: "Error",
			};
		case "chan":
			{
				pack: ["stdgo"],
				name: "Chan",
			};
		case "any":
			{
				pack: ["stdgo"],
				name: "AnyInterface",
			};
		default:
			null;
	}
} function selectorType(expr:GoAst.SelectorExpr, info:Info):ComplexType {

	final t = typeof(expr, info, false);
	final ct = toComplexType(t, info);
	return ct;
} function ellipsisType(expr:GoAst.Ellipsis, info:Info):ComplexType {

	var t = typeExprType(expr.elt, info);
	return TPath({
		name: "Rest",
		pack: ["haxe"],
		params: [TPType(t)],
	});
} 

function isFunction(expr:GoAst.Expr, info:Info):Bool {

	expr = escapeParensRaw(expr);
	final ft = typeof(expr, info, false);
	final sig = isSignature(ft);
	var kind:GoAst.ObjKind = expr.id == "SelectorExpr" ? expr.sel.kind : expr.kind;
	var notFunction = kind == GoAst.ObjKind.typ || (!sig && !isInvalid(ft) && expr.id != "CallExpr");
	if (!notFunction && sig)
		notFunction = expr.id == "ParenExpr" && expr.x.id == "FuncType" || expr.id == "FuncType";
	return !notFunction;
} function isTuple(type:GoType):Bool {

	return switch type {
		case tuple(_, _):
			true;
		default:
			false;
	}
}  


function exprToString(fromType:GoType, toType:GoType, expr:Expr, info:Info):Expr {

	switch toType {
		case basic(string_kind):
			switch fromType {
				case basic(float32_kind), basic(float64_kind), basic(untyped_float_kind):
					return macro Std.string($expr);
				case basic(uint32_kind), basic(uint_kind), basic(untyped_int_kind):
					return macro Std.string((($expr : UInt) : Float));
				case basic(uint64_kind):
					return macro @:privateAccess (($expr).toBasic() : haxe.UInt64).toString();
				case basic(int64_kind):
					return macro @:privateAccess (($expr).toBasic() : haxe.Int64).toString();
				case basic(int_kind), basic(int8_kind), basic(uint8_kind), basic(int16_kind), basic(uint16_kind), basic(int32_kind):
					return expr;
				case basic(bool_kind):
					return expr;
				case basic(complex64_kind), basic(complex128_kind):
					return expr;
				case basic(string_kind):
					return expr;
				default:
			}
		default:
	}
	return expr;
} 
// @:formatter off
function genSlice(p:TypePath, elem:GoType, size:Expr, cap:Expr, returnExpr:Expr->Expr, info:Info, sets:Array<Expr>):Expr {

	var param = toComplexType(elem, info);
	var value = defaultValue(elem, info);
	if (value == null)
		value = macro stdgo.Go.expectedValue();
	if (size == null)
		return returnExpr(macro new $p(0, 0));

	function createArgs(len:Expr, cap:Expr, sets:Array<Expr>):Array<Expr> {
		if (sets == null)
			return [len, cap];
		return [len, cap, macro...$a{sets}];
	}
	switch getUnderlying(elem) {
		case structType(_), arrayType(_):
			if (sets == null) {
				sets = [
					macro for (i in 0...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()) $value
				];
			} else {
				return macro new $p($size, $cap, ...$a{sets}.concat([
					for (i in ${makeExpr(sets.length)}...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()
				) $value]));
			}
			return returnExpr(macro new $p($a{createArgs(size, cap, sets)}));
		case basic(kind):
			switch kind {
				case int8_kind, int16_kind, int32_kind, uint8_kind, uint16_kind, uint32_kind, float32_kind, float64_kind, untyped_float_kind,
					untyped_int_kind, int_kind, uint_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setNumber32__());
				case int64_kind, uint64_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setNumber64__());
				case string_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setString__());
				default:
			}
		default:
	}
	return macro new $p($a{createArgs(size, cap, sets)});
}

// @:formatter on

function genericIndices(indices:Array<GoAst.Expr>, params:Array<GoType>, typeParams:Array<GoType>, info:Info):Array<Expr> {
	var genericExprs:Array<GoAst.Expr> = indices; // genericTypes but exprs
	var removalGenericExprs:Array<GoAst.Expr> = [];
	for (i in 0...typeParams.length) {
		switch typeParams[i] {
			case typeParam(_, _):

			default:
				if (genericExprs.length > i)
					removalGenericExprs.push(genericExprs[i]);
		}
	}
	for (expr in removalGenericExprs) {
		genericExprs.remove(expr);
	}
	final argTypes = params.map(p -> toComplexType(p, info)); // params are args
	for (i in 0...argTypes.length) {
		for (genericExpr in genericExprs) {
			final a = argTypes[i];
			final b = typeExprType(genericExpr, info);
			switch a {
				case TPath(p):
					if (isTypeParam(params[i])) {
						/*if (p.params == null) {
							genericExprs.remove(genericExpr);
							break;
						}*/
						/*var next = false;
							for (param in p.params) {
								switch param {
									case TPType(a):
										if (compareComplexType(a, b)) { // checking if arg already has type matching for macro to use
											genericExprs.remove(genericExpr);
											break;
										}
									default:
								}
							}
							if (next)
								break; */
					}
				default:
			}
		}
	}
	final args:Array<Expr> = [];
	/*if (genericExprs.length > 0) {
		for (genericExpr in genericExprs) {
			final t = typeof(genericExpr, info, false);
			final defaultType = defaultValue(t, info);
			args.push(defaultType);
		}
	}*/
	return args;
}

function typeFunctionLiteral(args:Array<Expr>, params:Array<GoType>, results:Array<GoType>, x:Expr, info:Info):Expr {
	final funcArgs = params.map(param -> switch param {
		case _var(name, _.get() => type):
			({
				name: name,
				type: toComplexType(type, info),
			} : FunctionArg);
		default:
			throw info.panic() + "param not var: " + param;
	});
	final exprArgs = funcArgs.map(arg -> macro $i{arg.name});
	if (funcArgs.length > 0 && isRestType(funcArgs[funcArgs.length - 1].type)) {
		exprArgs[exprArgs.length - 1] = macro...$e{exprArgs[exprArgs.length - 1]};
	}
	final ret = getReturn(results, info);
	var expr = macro $x($a{args.concat(exprArgs)});
	if (!isVoid(ret))
		expr = macro return $expr;
	return toExpr(EFunction(FAnonymous, {
		ret: ret,
		args: funcArgs,
		expr: expr,
	}));
}

function toAnyInterface(x:Expr, t:GoType, info:Info, needWrapping:Bool = true):Expr {
	if (isRef(t))
		t = getElem(t);
	switch t {
		case named(_, _, _, _):
			if (!isInterface(t) && !isAnyInterface(t) && needWrapping) {
				x = wrapperExpr(t, x, info);
			}
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					return macro(null : stdgo.AnyInterface);
				default:
			}
		default:
	}
	return macro stdgo.Go.toInterface($x);
}

function toReflectType(t:GoType, info:Info, paths:Array<String>, equalityBool:Bool):Expr {
	return switch t {
		case typeParam(name, params):
			final name = makeString(name);
			final params = macro [];
			macro stdgo._internal.internal.reflect.Reflect.GoType.typeParam($name, {get: () -> params});
		case refType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.refType({get: () -> $elem});
		case mapType(_.get() => key, _.get() => value):
			final key = toReflectType(key, info, paths.copy(), equalityBool);
			final value = toReflectType(value, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.mapType({get: () -> $key}, {get: () -> $value});
		case pointerType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.pointerType({get: () -> $elem});
		case arrayType(_.get() => elem, len):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			final len = toExpr(EConst(CInt('$len')));
			macro stdgo._internal.internal.reflect.Reflect.GoType.arrayType({get: () -> $elem}, $len);
		case sliceType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.sliceType({get: () -> $elem});
		case basic(kind):
			final kind:String = kind;
			macro stdgo._internal.internal.reflect.Reflect.GoType.basic($i{kind});
		case _var(name, _.get() => type):
			toReflectType(type, info, paths.copy(), equalityBool);
		case chanType(dir, _.get() => elem):
			final dir = toExpr(EConst(CInt('$dir')));
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.chanType($dir, {get: () -> $elem});
		case interfaceType(empty, methods):
			final empty = empty ? macro true : macro false;
			final methodExprs:Array<Expr> = [];
			/*for (method in methods) {
				final name = makeString(method.name);
				final t = toReflectType(method.type.get(), info, paths.copy(), equalityBool);
				final recv = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType; // toReflectType(method.recv.get(), info, paths.copy());
				methodExprs.push(macro new stdgo._internal.internal.reflect.Reflect.MethodType($name, {get: () -> $t}, {get: () -> $recv}));
			}*/
			final e = macro stdgo._internal.internal.reflect.Reflect.GoType.interfaceType($empty, ${macro $a{methodExprs}});
			e;
		case invalidType:
			macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
		case named(path2, methods, type, _, _):
			final namedPath = namedTypePath(path2, info);
			namedPath.pack.push(namedPath.name);
			final path = makeString(namedPath.pack.join("."));
			final methodExprs:Array<Expr> = [];
			var t = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
			if (!paths.contains(path2)) {
				paths.push(path2);
				t = toReflectType(type, info, paths.copy(), equalityBool);
			}
			final e = macro stdgo._internal.internal.reflect.Reflect.GoType.named($path, ${macro $a{methodExprs}}, $t, false, {get: () -> null});
			e;
		case previouslyNamed(path):
			final path = makeString(path);
			macro stdgo._internal.internal.reflect.Reflect.GoType.previousNamed($path);
		case signature(variadic, params, results, _.get() => recv):
			if (equalityBool)
				return macro stdgo._internal.internal.reflect.Reflect.GoType.signature(false, {get: () -> null}, {get: () -> null}, {get: () -> null});
			final variadic = variadic ? macro true : macro false;
			final params = macro $a{params.get().map(param -> toReflectType(param, info, paths.copy(), equalityBool))};
			final results = macro $a{results.get().map(result -> toReflectType(result, info, paths.copy(), equalityBool))};
			final recv = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType; // toReflectType(recv, info, paths.copy());
			macro stdgo._internal.internal.reflect.Reflect.GoType.signature($variadic, {get: () -> $params}, {get: () -> $results}, {get: () -> $recv});
		case structType(fields):
			var exprs:Array<Expr> = [];
			for (field in fields) {
				final name = makeString(field.name);
				final embedded = field.embedded ? macro true : macro false;
				final tag = makeString(field.tag);
				final t = toReflectType(field.type.get(), info, paths.copy(), equalityBool);
				exprs.push(macro {
					name: $name,
					embedded: $embedded,
					tag: $tag,
					type: {get: () -> $t},
					optional: false,
				});
			}
			var expr = macro $a{exprs};
			macro stdgo._internal.internal.reflect.Reflect.GoType.structType($expr);
		case tuple(len, _.get() => vars):
			final len = toExpr(EConst(CInt('$len')));
			final vars = [for (v in vars) toReflectType(v, info, paths.copy(), equalityBool)];
			macro stdgo._internal.internal.reflect.Reflect.GoType.tuple($len, $a{vars});
	}
}

function getLocalType(hash:UInt, underlying:GoType, info:Info):GoType {
	return info.locals.exists(hash) ? info.locals.get(hash) : underlying;
}

function getTuple(vars:Array<Dynamic>, info:Info):Array<GoType> {
	var tuples:Array<GoType> = [];
	if (vars == null)
		return [];
	var index = 0;
	for (v in vars) {
		final t = typeof(v.type, info, false);
		if (v.names != null) {
			if (v.names.length == 0) {
				tuples.push(t);
				continue;
			}
			for (name in (v.names : Array<String>)) {
				tuples.push(_var(name, {get: () -> t}));
			}
		} else {
			if (t == invalidType)
				trace("v:", v.type.id, "\n", t);
			if (v.name == "_" || v.name == "") {
				tuples.push(_var("_" + index, {get: () -> t}));
				index++;
				continue;
			}
			tuples.push(_var(v.name, {get: () -> t}));
		}
	}
	return tuples;
}

function hashTypeToExprType(e:GoAst.Expr, info:Info):GoAst.Expr {
	if (e == null)
		return null;
	return switch e.id {
		case "HashType":
			info.global.hashMap[e.hash];
		default:
			e;
	}
}

function typeof(e:GoAst.Expr, info:Info, isNamed:Bool, paths:Array<String> = null):GoType {
	if (e == null)
		return invalidType;
	if (paths == null)
		paths = [];
	var t = switch e.id {
		case "HashType":
			typeof(info.global.hashMap[e.hash], info, isNamed, paths.copy());
		case "TypeParam":
			var constraint = hashTypeToExprType(e.constraint, info);
			if (constraint != null && constraint.embeds == null) {
				constraint = hashTypeToExprType(constraint.underlying, info);
			}
			if (constraint == null || constraint.embeds == null || constraint.embeds.length == 0) {
				typeParam(e.name, [interfaceType(true, [])]);
			} else {
				final terms:Array<Dynamic> = hashTypeToExprType(constraint.embeds[0], info).terms;
				if (terms == null) {
					typeof(constraint.embeds[0], info, false, paths.copy());
				} else {
					typeParam(e.name, [
						for (term in terms) {
							typeof(term.type, info, false, paths.copy());
						}
					]);
				}
			}
		case "Signature":
			final params = {get: () -> getTuple(hashTypeToExprType(e.params, info)?.vars, info)};
			final results = {get: () -> getTuple(hashTypeToExprType(e.results, info)?.vars, info)};
			final recv = {get: () -> typeof(e.recv, info, false, paths.copy())};
			final sigTypeParams:Array<Dynamic> = e.typeParams;
			final typeParams = {
				get: () -> {
					final typeParams = [];
					if (sigTypeParams != null) {
						for (param in sigTypeParams) {
							typeParams.push(typeof(param, info, false, paths.copy()));
						}
					}
					typeParams;
				}
			};
			GoType.signature(e.variadic, params, results, recv, typeParams);
		case "Named":
			final path:String = e.path;
			if (path == null) {
				trace("null named path: " + e);
				throw info.panic() + path;
			}
			var underlying = invalidType;
			final methods:Array<MethodType> = [];
			final params:Array<GoType> = [];
			// trace(path);
			if (!paths.contains(path)) {
				paths.push(path);
				underlying = {
					if (e.hash == null) {
						invalidType;
					} else if (info.locals.exists(e.hash)) {
						getLocalType(e.hash, null, info);
					} else if (info.localUnderlyingNames.exists(path)) {
						info.localUnderlyingNames[path];
					} else {
						typeof(e.underlying, info, true, paths.copy());
					}
				};
				if (e.methods != null) {
					for (method in (e.methods : Array<Dynamic>)) {
						final recv = method.recv;
						final type = method.type;
						final name = formatHaxeFieldName(method.name, info);
						methods.push({
							name: name,
							type: {get: () -> typeof(type, info, false, paths.copy())},
							recv: {get: () -> typeof(recv, info, false, paths.copy())},
						});
					}
				}
				if (e.params != null && e.params.length > 0) {
					for (param in (e.params : Array<Dynamic>)) {
						final t = typeof(param, info, false, paths.copy());
						params.push(t);
					}
				}
			}
			named(path, methods, underlying, e.alias, {get: () -> params});
		case "Basic":
			if (e.kind == 0) {
				invalidType;
			} else {
				var kind:GoAst.BasicKind = e.kind;
				switch kind {
					case untyped_int_kind:
						kind = uint64_kind;
					case untyped_float_kind:
						kind = float64_kind;
					case untyped_complex_kind:
						kind = complex128_kind;
					case untyped_bool_kind:
						kind = bool_kind;
					case untyped_string_kind:
						kind = string_kind;
					case untyped_rune_kind:
						kind = int32_kind;
					default:
				}
				basic(kind);
			}
		case "Tuple":
			if (e.len > 1) {
				final t = [for (v in (e.vars : Array<Dynamic>)) typeof(v, info, false, paths.copy())];
				tuple(e.len, {get: () -> t});
			} else {
				typeof(e.vars[0], info, false, paths.copy());
			}
		case "Var":
			if (e.name == "_" || e.name == "")
				return typeof(e.type, info, false, paths.copy());
			_var(e.name, {get: () -> typeof(e.type, info, false, paths.copy())});
		case "Interface":
			if (e.embeds.length == 1 && e.embeds[0].id == "Union") {
				typeof(e.embeds[0], info, false, paths.copy());
			} else {
				final methods:Array<MethodType> = [];
				if (e.methods != null) {
					for (method in (e.methods : Array<Dynamic>)) {
						methods.push({
							name: formatHaxeFieldName(method.name, info),
							type: {get: () -> typeof(method.type, info, false, paths.copy())},
							recv: {get: () -> typeof(method.recv, info, false, paths.copy())},
						});
					}
				}
				final underlying = interfaceType(e.empty, methods);
				final t = getLocalType(e.hash, underlying, info);
				t;
			}
		case "Slice":
			sliceType({get: () -> typeof(e.elem, info, false, paths.copy())});
		case "Array":
			arrayType({get: () -> typeof(e.elem, info, false, paths.copy())}, e.len);
		case "Pointer":
			pointerType({get: () -> typeof(e.elem, info, false, paths.copy())});
		case "Map":
			mapType({get: () -> typeof(e.key, info, false, paths.copy())}, {get: () -> typeof(e.elem, info, false, paths.copy())});
		case "Struct":
			var t:GoType = structType([
				for (field in (e.fields : Array<Dynamic>))
					{
						name: formatHaxeFieldName(field.name, info),
						type: {get: () -> typeof(field.type, info, false, paths.copy())},
						embedded: field.embedded,
						tag: field.tag == null ? "" : field.tag,
						optional: field.name == "_",
					}

			]);
			if (!isNamed) {
				t = getLocalType(e.hash, t, info);
			}
			t;
		case "Chan":
			chanType(e.dir, {get: () -> typeof(e.elem, info, false, paths.copy())});
		case null:
			return invalidType;
		case "CallExpr":
			final e:GoAst.CallExpr = e;
			var type = typeof(e.type, info, false, paths.copy());
			switch type {
				case signature(_, _, _.get() => results, _):
					return results[0];
				default:
					return type;
			}
		case "BasicLit":
			typeof(e.type, info, false, paths.copy());
		case "Ident":
			final e:GoAst.Ident = e;
			typeof(e.type, info, false, paths.copy());
		case "CompositeLit":
			final e:GoAst.CompositeLit = e;
			final t = typeof(e.type, info, false, paths.copy());
			t;
		case "SelectorExpr":
			final e:GoAst.SelectorExpr = e;
			var t = typeof(e.type, info, false, paths.copy());
			if (e.recv != null) {
				final recv = typeof(e.recv, info, false, paths.copy());
				switch t {
					case signature(variadic, params, results, _.get() => sigRecv, typeParams):
						if (sigRecv == invalidType) {
							t = signature(variadic, params, results, {get: () -> recv}, typeParams);
						}
					default:
				}
			}
			t;
		case "IndexExpr":
			final e:GoAst.IndexExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "IndexListExpr":
			final e:GoAst.IndexListExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "BinaryExpr":
			final e:GoAst.BinaryExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "StarExpr":
			final e:GoAst.StarExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "UnaryExpr":
			final e:GoAst.UnaryExpr = e;
			switch e.op {
				case ARROW:
					getElem(typeof(e.x, info, false, paths.copy()));
				case AND:
					pointerType({get: () -> typeof(e.x, info, false, paths.copy())});
				default:
					typeof(e.x, info, false, paths.copy());
			}
		case "TypeAssertExpr":
			final e:GoAst.TypeAssertExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "FuncLit":
			var e:GoAst.FuncLit = e;
			typeof(e.type.type, info, false, paths.copy());
		case "KeyValueExpr":
			final e:GoAst.KeyValueExpr = e;
			mapType({get: () -> typeof(e.key, info, false, paths.copy())}, {get: () -> typeof(e.value, info, false, paths.copy())});
		case "SliceExpr":
			final e:GoAst.SliceExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "ParenExpr":
			final e:GoAst.ParenExpr = e;
			typeof(e.x, info, false, paths.copy());
		case "InterfaceType":
			typeof(e.type, info, false, paths.copy());
		case "ArrayType":
			final e:GoAst.ArrayType = e;
			final elem = typeof(e.elt, info, false, paths.copy());
			final v = hashTypeToExprType(e.type, info);
			final id = v.id;
			switch id {
				case "Array":
					final len = v.len;
					arrayType({get: () -> elem}, len);
				case "Slice":
					sliceType({get: () -> elem});
				case "Basic":
					invalidType;
				default:
					trace(v);
					throw info.panic() + "unknown Array id: " + id;
			}
		case "MapType":
			final e:GoAst.MapType = e;
			final keyType = typeof(e.key, info, false, paths.copy());
			final valueType = typeof(e.value, info, false, paths.copy());
			mapType({get: () -> keyType}, {get: () -> valueType});
		case "ChanType":
			final e:GoAst.ChanType = e;
			chanType(e.type.dir, {get: () -> typeof(e.value, info, false, paths.copy())});
		case "StructType":
			final e:GoAst.StructType = e;
			structType(typeFieldListFieldTypes(e.fields, info));
		case "FuncType":
			final e:GoAst.FuncType = e;
			final list = hashTypeToExprType(e.params.list, info);
			final params = {get: () -> getTuple(list, info)};
			final results = e.results == null ? {get: () -> []} : {get: () -> getTuple(hashTypeToExprType(e.results.list, info), info)};
			final recv = {get: () -> typeof(e.type.recv, info, false, paths.copy())};
			var variadic = false;
			if (e.params.list.length > 0) {
				if (list[(list.length : Int) - 1].type.id == "Ellipsis")
					variadic = true;
			}
			signature(variadic, params, results, recv, params);
		// typeof(e.type, info, false, paths.copy());
		case "Ellipsis":
			typeof(e.type, info, false, paths.copy());
		default:
			throw info.panic() + "unknown typeof expr: " + e.id;
	}
	if (t == null)
		return null;
	return switch t {
		case pointerType(_.get() => elem):
			isRefValue(elem) ? refType({get: () -> elem}) : t;
		default:
			t;
	}
}

function getGlobalPath(info:Info):String {
	var globalPath = info.global.path;
	if (StringTools.endsWith(info.global.path, ".pkg")) {
		globalPath = globalPath.substr(0, globalPath.length - 4);
	}
	if (globalPath == "") {
		return "_internal";
	}
	final globalPathOld = globalPath;
	globalPath = "_internal." + globalPath;
	if (stdgoList.indexOf(toGoPath(globalPathOld)) != -1) { // haxe only type, otherwise the go code references Haxe
		globalPath = "stdgo." + globalPath;
	}
	return globalPath;
}

function toGoPath(path:String):String {
	return StringTools.replace(path, ".", "/");
}

function toHaxePath(path:String):String {
	return StringTools.replace(path, "/", ".");
}

function namedTypePath(path:String, info:Info):TypePath { // other parseTypePath
	path = StringTools.replace(path, "go-", "");
	// path = StringTools.replace(path, "_test.", ".");
	final startCommandLineArg = "command-line-arguments.";
	if (path.substr(0, startCommandLineArg.length) == startCommandLineArg) {
		path = path.substr(startCommandLineArg.length);
	}

	var index = path.indexOf("[");
	final params:Array<TypeParam> = [];
	if (index != -1) {
		path = path.substr(0, index); // remove type param from path name
	}
	var last = path.lastIndexOf("/") + 1;
	var part = path.substr(last);
	var split = part.lastIndexOf(".");
	var pkg = part.substr(0, split);
	final clName = part.substr(split + 1);
	var cl = className(clName, info);
	final basicType = classToBuiltinTypePath(clName, info);
	if (basicType != null)
		return basicType;
	path = path.substr(0, last) + pkg;
	if (path == "command-line-arguments")
		path = "";
	path = normalizePath(path);

	var pack = path.split("/");
	pack.unshift("_internal");
	final path = toGoPath(path);
	if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
		pack.unshift("stdgo");
	}
	if (last == 0 && split == -1) {
		return {pack: [], name: splitDepFullPathName(cl, info)};
	}
	// for split deps
	pack.push(title(pkg));
	final last = pack.pop();
	pack.push(last + "_" + cl.toLowerCase());
	return {pack: pack, name: cl};
}

function toComplexType(e:GoType, info:Info):ComplexType {
	if (e == null)
		return null;
	// return invalidComplexType();
	return switch e {
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Ref", params: [TPType(ct)]});
		case basic(kind):
			switch kind {
				case int64_kind: TPath({pack: ["stdgo"], name: "GoInt64"});
				case int32_kind: TPath({pack: ["stdgo"], name: "GoInt32"});
				case int16_kind: TPath({pack: ["stdgo"], name: "GoInt16"});
				case int8_kind: TPath({pack: ["stdgo"], name: "GoInt8"});

				case int_kind: TPath({pack: ["stdgo"], name: "GoInt"});
				case uint_kind: TPath({pack: ["stdgo"], name: "GoUInt"});

				case uint64_kind: TPath({pack: ["stdgo"], name: "GoUInt64"});
				case uint32_kind: TPath({pack: ["stdgo"], name: "GoUInt32"});
				case uint16_kind: TPath({pack: ["stdgo"], name: "GoUInt16"});
				case uint8_kind: TPath({pack: ["stdgo"], name: "GoUInt8"});

				case string_kind: TPath({pack: ["stdgo"], name: "GoString"});
				case complex64_kind: TPath({pack: ["stdgo"], name: "GoComplex64"});
				case complex128_kind: TPath({pack: ["stdgo"], name: "GoComplex128"});
				case float32_kind: TPath({pack: ["stdgo"], name: "GoFloat32"});
				case float64_kind: TPath({pack: ["stdgo"], name: "GoFloat64"});
				case bool_kind: TPath({pack: [], name: "Bool"});

				case uintptr_kind: TPath({pack: ["stdgo"], name: "GoUIntptr"});

				case untyped_int_kind, untyped_bool_kind, untyped_float_kind, untyped_rune_kind, untyped_complex_kind, untyped_string_kind: throw info.panic()
						+ "untyped kind: " + kind;
				case untyped_nil_kind: null;
				case unsafepointer_kind: TPath({pack: ["stdgo", "_internal", "unsafe", "Unsafe"], name: "UnsafePointer"});
				default:
					throw info.panic() + "unknown kind to complexType: " + kind;
			}
		case interfaceType(empty, methods):
			if (empty)
				return anyInterfaceType();
			// trace("methods: " + methods.length, methods.map(method -> method.name));
			// return TPath({pack: [], name: "FailType"});
			// only being triggered on extern packages (stdgoExterns.json) in limited circumstances so it's not important.
			return anyInterfaceType();
		// throw info.panic() + "non empty interface";
		case named(path, _, underlying, _, _.get() => params):
			// trace(path);
			// trace(info.renameClasses);
			if (path == "comparable")
				return null;
			if (path == null) {
				trace("underlying null path: " + printer.printComplexType(toComplexType(underlying, info)));
				throw info.panic() + path;
			}
			final p = namedTypePath(path, info);
			if (params != null)
				p.params = params.map(param -> TPType(toComplexType(param, info)));
			TPath(p);
		case sliceType(_.get() => elem):
			final ct = toComplexType(elem, info);
			var params = [TPType(ct)];
			if (isInvalidComplexType(ct))
				params = [TPType(TPath({name: "Dynamic", pack: []}))];
			TPath({pack: ["stdgo"], name: "Slice", params: params});
		case arrayType(_.get() => elem, len):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "GoArray", params: [TPType(ct)]});
		case mapType(_.get() => key, _.get() => value):
			final ctKey = toComplexType(key, info);
			final ctValue = toComplexType(value, info);
			TPath({pack: ["stdgo"], name: "GoMap", params: [TPType(ctKey), TPType(ctValue)]});
		case invalidType:
			invalidComplexType();
		case pointerType(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Pointer", params: [TPType(ct)]});
		case chanType(dir, _.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Chan", params: [TPType(ct)]});
		case structType(fields):
			var fields = typeFields(fields, info, null, false);
			TAnonymous([
				for (field in fields)
					{
						name: field.name,
						pos: null,
						kind: field.kind,
					}
			]);
		case signature(variadic, _.get() => params, _.get() => results, _.get() => recv):
			var args:Array<ComplexType> = [];
			for (param in params) {
				args.push(toComplexType(param, info));
			}
			var ret:ComplexType = getReturn(results, info);
			if (variadic) {
				var last = args.pop();
				switch last {
					case TPath(p):
						p.name = "Rest";
						p.pack = ["haxe"];
						p.sub = null;
						last = TPath(p);
					default:
				}
				args.push(last);
			}
			TFunction(args, ret);
		case _var(_, _.get() => type):
			toComplexType(type, info);
		case typeParam(name, _):
			return TPath({pack: [], name: "Dynamic"});
		case tuple(len, _.get() => vars):
			var fields:Array<Field> = [];
			for (i in 0...vars.length) {
				final t = toComplexType(vars[i], info);
				fields.push({name: '_$i', pos: null, kind: FVar(t)});
			}
			TAnonymous(fields);
		default:
			throw info.panic() + "unknown goType to complexType: " + e;
	}
}

function getReturn(results:Array<GoType>, info:Info):ComplexType {
	if (results.length == 0) {
		return TPath({name: "Void", pack: []});
	} else if (results.length == 1) {
		return toComplexType(results[0], info);
	} else {
		final fields:Array<Field> = [];
		for (i in 0...results.length) {
			switch results[i] {
				case _var(_, _.get() => type):
					fields.push({name: "_" + i, pos: null, kind: FVar(toComplexType(type, info))});
				default:
					fields.push({name: "_" + i, pos: null, kind: FVar(toComplexType(results[i], info))});
			}
		}
		return TAnonymous(fields);
	}
}

function toGoType(expr:Expr):Expr {
	switch expr.expr {
		case EConst(c):
			switch c {
				case CString(_, _):
					return macro($expr : stdgo.GoString);
				case CInt(_):
					return macro($expr : stdgo.GoInt);
				case CFloat(_):
					return macro($expr : stdgo.GoFloat64);
				default:
			}
		default:
	}
	return expr;
}

function typeRest(expr:Expr, t:GoType, info:Info):Expr {
	expr = toGoType(expr);
	t = getArrayElem(t);
	final ct = toComplexType(t, info);
	return macro...($expr : Array<$ct>);
}


function rawEscapeSequences(value:String):String {
	var backslash = false;
	var i = 0;
	while (i < value.length) {
		if (backslash) {
			if (value.charCodeAt(i) != "\\".code) {
				value = value.substr(0, i) + "\\" + value.substr(i);
				i++;
			} else {
				value = value.substr(0, i) + "\\" + value.substr(i);
			}
			backslash = false;
			i++;
			continue;
		}
		if (value.charCodeAt(i) == "\\".code)
			backslash = true;
		i++;
	}
	if (backslash)
		value += "\\";
	return value;
}

function getRune(value:String):String {
	var backslash = false;
	var i = 0;
	var buff = new StringBuf();
	while (i < value.length) {
		if (backslash) {
			final code = value.charCodeAt(i);
			switch code {
				case 'x'.code:
					return "\\u00" + value.substr(i + 1, 2);
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					var s:String = '$num';
					while (s.length < 3)
						s = '0$s';
					return '\\u0$s';
				case '"'.code:
					return '"';
				case 'a'.code:
					return "\\x07";
				case 'b'.code:
					return "\\u0008";
				case 'e'.code:
					return "\\x1B";
				case 'f'.code:
					return "\\x0C";
				case 'v'.code:
					return "\\x0B";
				case 'u'.code:
					return "\\u" + value.substr(i + 1, 4);
				case 'U'.code:
					return "\\u{" + value.substr(i + 1, 8) + "}";
				case 't'.code, 'r'.code, 'n'.code, "\\".code:
					return "\\" + String.fromCharCode(code);
				default:
					return value.substr(1);
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			// case "$".code:
			//	buff.add("$$");
			default:
				try {
					buff.addChar(code);
				} catch (_) {
					buff.addChar(97);
				}
		}
		i++;
	}

	if (backslash)
		return "\\";
	return value;
}

function decodeEscapeSequences(value:String):Array<{?s:String, ?code:Int}> {
	var backslash = false;
	var i = 0;
	final values:Array<{?s:String, ?code:Int}> = [];
	var buff = new StringBuf();
	function escapeHex(value:Int) {
		if (buff.length > 0)
			values.push({s: buff.toString()});
		values.push({code: value});
		buff = new StringBuf();
	}
	while (i < value.length) {
		if (backslash) {
			final code = value.charCodeAt(i);
			switch code {
				case 'x'.code:
					// var hex = value.substr(i + 1, 2);
					var high = StringTools.fastCodeAt(value, i + 1);
					var low = StringTools.fastCodeAt(value, i + 2);
					high = (high & 0xF) + ((high & 0x40) >> 6) * 9;
					low = (low & 0xF) + ((low & 0x40) >> 6) * 9;
					final num = ((high << 4) | low) & 0xFF;
					escapeHex(num);
					i += 2;
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					escapeHex(num);
					i += 3;
				case '"'.code:
					buff.add('"');
				case 'a'.code:
					buff.add("\\x07");
				case 'b'.code:
					buff.add("\\x08");
				case 'e'.code:
					buff.add("\\x1B");
				case 'f'.code:
					buff.add("\\x0C");
				case 'v'.code:
					buff.add("\\x0B");
				case 'u'.code:
					buff.add("\\u" + value.substr(i + 1, 4));
					i += 4;
				case 'U'.code:
					buff.add("\\u{" + value.substr(i + 1, 8) + "}");
					i += 8;
				default:
					buff.add("\\" + String.fromCharCode(code));
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			// case "$".code:
			//	buff.add("$$");
			default:
				try {
					buff.addChar(code);
				} catch (_) {
					buff.addChar(97);
				}
		}
		i++;
	}
	if (backslash)
		buff.add("\\");
	if (buff.length > 0)
		values.push({s: buff.toString()});
	return values;
}



/*
	For struct literals the following rules apply:

	A key must be a field name declared in the struct type.
	An element list that does not contain any keys must list an element for each struct field in the order in which the fields are declared.
	If any element has a key, every element must have a key.
	An element list that contains keys does not need to have an element for each struct field. Omitted fields get the zero value for that field.
	A literal may omit the element list; such a literal evaluates to the zero value for its type.
	It is an error to specify an element for a non-exported field of a struct belonging to a different package.
 */ /*
	For array and slice literals the following rules apply:

	Each element has an associated integer index marking its position in the array.
	An element with a key uses the key as its index. The key must be a non-negative constant representable by a value of type int; and if it is typed it must be of integer type.
	An element without a key uses the previous element's index plus one. If the first element has no key, its index is zero.
 */
function hasKeyValueExpr(elts:Array<GoAst.Expr>) {
	for (e in elts) {
		if (e.id == "KeyValueExpr")
			return true;
	}
	return false;
}


function getTypePath(ct:ComplexType, info:Info):TypePath {
	switch ct {
		case TPath(p):
			return p;
		default:
			return null;
	}
}

function title(name:String):String {
	final name = name.charAt(0).toUpperCase() + name.substring(1);
	if (name == "Atomic")
		return "Atomic_";
	if (name == "Environ")
		return "Environ_";
	return name;
}

function compositeLit(type:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):ExprDef {
	final keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	final underlying = getUnderlying(type);
	if (isInvalid(underlying)) {
		return (macro @:invalid_compositelit null).expr;
	}
	switch removeTypeParam(underlying) {
		case interfaceType(_, _):
			// trace(underlying);
			// trace(type);
			return (macro @:compositeLit_interface null).expr;
		case refType(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return e.expr;
		case pointerType(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return (macro stdgo.Go.pointer($e)).expr;
		case structType(fields):
			var objectFields:Array<ObjectField> = [];
			var fields = fields.copy();
			var isAlias = false;
			switch type {
				case named(_, _, _, alias, _):
					if (alias) {
						isAlias = true;
					}
				case structType(_):
					isAlias = true;
				default:
			}
			if (!isAlias) {
				switch ct {
					case TPath(p):
						if (p.pack.length == 0 && StringTools.startsWith(p.name, "T__struct_")) isAlias = true;
					default:
				}
			}
			if (keyValueBool) {
				final fields = fields.copy();
				for (i in 0...expr.elts.length) {
					final elt:GoAst.KeyValueExpr = expr.elts[i];
					final key = formatHaxeFieldName(elt.key.name, info);
					for (field in fields) {
						if (field.name == key) {
							final value = assignTranslate(typeof(elt.value, info, false), field.type.get(), typer.exprs.Expr.typeExpr(elt.value, info), info);
							objectFields.push({
								field: field.name,
								expr: value,
							});
							if (isAlias)
								fields.remove(field);
							break;
						}
					}
				}
				if (isAlias) {
					for (field in fields) {
						objectFields.push({
							field: field.name,
							expr: defaultValue(field.type.get(), info, true),
						});
					}
				}
				var e = toExpr(EObjectDecl(objectFields));
				return (macro($e : $ct)).expr;
			} else {
				final args = [
					for (i in 0...expr.elts.length)
						assignTranslate(typeof(expr.elts[i], info, false), fields[i].type.get(), typer.exprs.Expr.typeExpr(expr.elts[i], info), info)
				];
				if (isAlias && args.length < fields.length) {
					for (i in args.length...fields.length) {
						args.push(defaultValue(fields[i].type.get(), info, true));
					}
				}
				if (isAlias) {
					var objectFields:Array<ObjectField> = [];
					for (i in 0...fields.length) {
						objectFields.push({
							field: fields[i].name,
							expr: args[i],
						});
					}
					var e = toExpr(EObjectDecl(objectFields));
					return (macro($e : $ct)).expr;
				} else {
					final p = getTypePath(ct, info);
					// generic named type needs fields filled in
					switch type {
						case named(_, _, _, _, _.get() => params):
							// guard against extern package named types without params such as reflect.Value
							if (params != null && params.length > 0) {
								for (i in args.length...fields.length) {
									args.push(defaultValue(fields[i].type.get(), info, true));
								}
							}
						default:
					}
					final e = macro new $p($a{args});
					return (macro($e : $ct)).expr;
				}
			}
		case sliceType(_.get() => elem):
			return compositeLitList(elem, keyValueBool, -1, underlying, toComplexType(type, info), expr, info).expr;
		case arrayType(_.get() => elem, len):
			return compositeLitList(elem, keyValueBool, len, underlying, toComplexType(type, info), expr, info).expr;
		case mapType(_.get() => var keyType, _.get() => valueType):
			return compositeLitMapList(keyType, valueType, underlying, toComplexType(type, info), expr, info).expr;
		default:
			throw info.panic() + "not supported CompositeLit type: " + underlying;
	}
}

function compositeLitMapList(keyType:GoType, valueType:GoType, underlying:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):Expr {
	var params:Array<Expr> = [];
	final keys:Array<Expr> = [];
	final values:Array<Expr> = [];
	function run(elt:GoAst.Expr) {
		if (elt.id == "CompositeLit") {
			switch getUnderlying(valueType) {
				case interfaceType(empty, _):
					if (empty) {
						return typer.exprs.Expr.typeExpr(elt, info);
					}
				case basic(_):
					return typer.exprs.Expr.typeExpr(elt, info);
				default:
			}
			final t = typeof(elt, info, false);
			final ct = toComplexType(t, info);
			return toExpr(compositeLit(t, ct, elt, info));
		}
		return typer.exprs.Expr.typeExpr(elt, info);
	}
	final exprs:Array<Expr> = [];
	for (elt in expr.elts) {
		final eltKeyType = typeof(elt.key, info, false);
		final eltValueType = typeof(elt.value, info, false);
		final key = assignTranslate(eltKeyType, keyType, run(elt.key), info, false);
		final value = assignTranslate(eltValueType, valueType, run(elt.value), info, false);
		exprs.push(macro x.set($key, $value));
	}
	final keyComplexType = toComplexType(keyType, info);
	final valueComplexType = toComplexType(valueType, info);
	return createMap(underlying, keyComplexType, valueComplexType, exprs, info, ct);
}

function createMap(t:GoType, keyComplexType:ComplexType, valueComplexType:ComplexType, exprs:Array<Expr>, info:Info, ct:ComplexType):Expr {
	var k:GoType = null;
	var v:GoType = null;
	switch getUnderlying(t) {
		case mapType(_.get() => var keyType, _.get() => var valueType):
			k = keyType;
			v = valueType;
		default:
			throw info.panic() + "underlying t invalid type createMap";
	}
	final keyT = toReflectType(k, info, [], true);
	final defaultValueExpr = defaultValue(v, info, true);
	var isObjectMap = false;
	var isUIntptrMap = false;
	function createRefPointerMap(name:String) {
		final keyElemComplexType = keyComplexType;
		final p:TypePath = {
			name: "GoMap",
			sub: name,
			pack: ["stdgo"],
			params: [TPType(keyComplexType), TPType(valueComplexType)]
		};
		return macro({
			final x = new $p();
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>);
	}
	final uk = getUnderlying(k);
	final p:TypePath = {name: "GoMap", pack: ["stdgo"], params: [TPType(keyComplexType), TPType(valueComplexType)]};
	switch uk {
		case interfaceType(empty, _):
			if (!empty) {
				isObjectMap = true;
			} else {
				return macro({
					final x = new stdgo.GoMap.GoAnyInterfaceMap<$valueComplexType>();
					x.__defaultValue__ = () -> $defaultValueExpr;
					@:mergeBlock $b{exprs};
					cast x;
				} : stdgo.GoMap<$keyComplexType, $valueComplexType>);
			}
		case structType(_), arrayType(_):
			isObjectMap = true;
		case pointerType(_):
			return createRefPointerMap("GoPointerMap");
		case refType(_):
			return createRefPointerMap("GoRefMap");
		case basic(kind):
			switch kind {
				case bool_kind, untyped_bool_kind: p.sub = "GoBoolMap";
				case int_kind, int8_kind, int16_kind, int32_kind, uint_kind, uint8_kind, uint16_kind, uint32_kind: p.sub = "GoIntMap";
				case int64_kind, untyped_int_kind: p.sub = "GoInt64Map";
				case uint64_kind: p.sub = "GoUInt64Map";
				case float32_kind, float64_kind: p.sub = "GoFloat64Map";
				case complex64_kind, complex128_kind, untyped_complex_kind: p.sub = "GoComplex128Map";
				case string_kind, untyped_string_kind: p.sub = "GoStringMap";
				case uintptr_kind: isUIntptrMap = true;
				// case unsafepointer_kind: KindType.unsafePointer;
				case unsafepointer_kind: isObjectMap = true;
				default: throw info.panic() + 'Unknown BasicKind: $kind';
			}
		case chanType(_, _):
			return createRefPointerMap("GoChanMap");
		default:
	}
	if (p.sub != null) {
		p.params = [p.params[1]];
	}
	if (isObjectMap) {
		return macro(({
			final x = new stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType>();
			x.t = new stdgo._internal.internal.reflect.Reflect._Type($keyT);
			x.__defaultValue__ = () -> $defaultValueExpr;
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
	}
	if (isUIntptrMap) {
		return macro(({
			final x = new stdgo.GoMap.GoUIntptrMap<$valueComplexType>();
			x.__defaultValue__ = () -> $defaultValueExpr;
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
	}
	return macro(({
		final x = new $p();
		x.__defaultValue__ = () -> $defaultValueExpr;
		@:mergeBlock $b{exprs};
		x;
	} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
}

function compositeLitList(elem:GoType, keyValueBool:Bool, len:Int, underlying:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):Expr {
	final p = getTypePath(toComplexType(underlying, info), info);
	var value = defaultValue(elem, info, false);
	if (keyValueBool) {
		var exprs:Array<{expr:Expr, index:Int}> = [];
		function run(elt:GoAst.Expr, index:Int) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null)
					return {index: index, expr: toExpr(compositeLit(elem, complexTypeElem(ct), elt, info))};
			}
			return {index: index, expr: typer.exprs.Expr.typeExpr(elt, info)};
		}
		var index:Int = 0;
		for (elt in expr.elts) {
			if (elt.id == "KeyValueExpr") { // array expansion syntax uses KeyValue, value being a string word representation of the number
				var elt:GoAst.KeyValueExpr = elt;
				final index = Std.parseInt(elt.key.value);
				exprs.push(run(elt.value, index));
			} else {
				exprs.push(run(elt, index));
			}
			index++;
		}
		var length = makeExpr(len);
		var sets:Array<Expr> = [];
		var max = 0;
		for (i in 0...exprs.length) {
			var index = exprs[i].index;
			if (index > max)
				max = index;
			var value = exprs[i].expr;
			value = assignTranslate(typeof(expr.elts[i], info, false), elem, value, info);
			sets.push(macro s[${makeExpr(index)}] = $value);
		}
		sets.push(macro s);
		if (len == -1) {
			length = makeExpr(max + 1);
			// final e = macro new $p($length, $length, ...([for (i in 0...$length) $value]));
			final e = genSlice(p, elem, length, macro 0, e -> e, info, null);
			sets.unshift(macro var s = $e);
			return macro $b{sets};
		} else {
			return toExpr(EBlock([macro var s:$ct = new $p($length, $length, ...[for (i in 0...$length) $value])].concat(sets)));
		}
	} else {
		var exprs:Array<Expr> = [];
		for (elt in expr.elts) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null) {
					var e = toExpr(compositeLit(elem, toComplexType(elem, info) /*complexTypeElem(ct)*/, elt, info));
					e = assignTranslate(typeof(elt, info, false), elem, e, info);
					exprs.push(e);
					continue;
				}
			}
			var e = typer.exprs.Expr.typeExpr(elt, info);
			e = assignTranslate(typeof(elt, info, false), elem, e, info);
			exprs.push(e);
		}
		final len = makeExpr(len != -1 ? len : exprs.length);
		final e = genSlice(p, elem, len, len, e -> e, info, exprs);
		// return e;
		return macro($e : $ct);
	}
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

function funcReset(info:Info) {
	info.global.deferBool = false;
	info.global.recoverBool = false;
	info.global.gotoSystem = false;
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


function walkBinary(e:Expr):Expr {
	switch e.expr {
		case EBinop(op, e1, c): // (A op2 B) op C
			final p = opPrecedence(op);
			e1 = walkBinary(e1);
			c = walkBinary(c);
			switch e1.expr {
				case EBinop(op2, a, b):
					final p2 = opPrecedence(op2);
					if (p2 >= p) e1 = macro(${e1});
				default:
			}
			switch c.expr {
				case EBinop(op2, a, b):
					final p2 = opPrecedence(op2);
					if (p2 >= p) c = macro(${c});
				default:
			}
			e = toExpr(EBinop(op, e1, c));
		default:
	}
	return e;
}

function typeUnOp(token:GoAst.Token):Unop {
	return switch token {
		case NOT: OpNot;
		case SUB: OpNeg;
		case TIDLE: OpNeg;
		case ARROW: null;
		case XOR: null;
		case ADD: null;
		default:
			throw "unknown unop token: " + token;
			OpNegBits;
	}
}

function typeOp(token:GoAst.Token):Binop {
	return switch token {
		case ADD: OpAdd;
		case SUB: OpSub;
		case MUL: OpMult;
		case QUO: OpDiv;
		case ASSIGN: OpAssign;
		case EQL: OpEq;
		case NEQ: OpNotEq;
		case GTR: OpGt;
		case GEQ: OpGte;
		case LSS: OpLt;
		case LEQ: OpLte;
		case AND: OpAnd;
		case OR: OpOr;
		case XOR: OpXor;
		case LAND: OpBoolAnd;
		case LOR: OpBoolOr;
		case SHL: OpShl;
		case SHR: OpShr;
		case REM: OpMod;

		case ADD_ASSIGN: OpAssignOp(OpAdd);
		case SUB_ASSIGN: OpAssignOp(OpSub);
		case MUL_ASSIGN: OpAssignOp(OpMult);
		case QUO_ASSIGN: OpAssignOp(OpDiv);
		case REM_ASSIGN: OpAssignOp(OpMod);
		case SHL_ASSIGN: OpAssignOp(OpShl);
		case SHR_ASSIGN: OpAssignOp(OpShr);
		case XOR_ASSIGN: OpAssignOp(OpXor);
		case OR_ASSIGN: OpAssignOp(OpOr);

		case AND_ASSIGN: OpAssignOp(OpAnd);
		case AND_NOT_ASSIGN: null;
		case RANGE: OpInterval;
		case ELLIPSIS: OpInterval;
		default:
			throw "unknown op token: " + token;
			OpInterval;
	}
}

function getStructFields(type:GoType, restrictedFields:Array<String>, onlyEmbeds:Bool = false):Array<FieldType> {
	if (type == null)
		return [];
	return switch type {
		case named(_, methods, elem, _, _):
			for (method in methods) {
				restrictedFields.push(method.name);
			}
			getStructFields(elem, restrictedFields, onlyEmbeds);
		case pointerType(_.get() => elem), refType(_.get() => elem):
			getStructFields(elem, restrictedFields, onlyEmbeds);
		case structType(fields):
			if (onlyEmbeds) {
				fields.filter(field -> field.embedded);
			} else {
				final fields = fields.copy();
				fields.sort((a, b) -> a.embedded == b.embedded ? 0 : (!a.embedded ? 1 : -1));
				fields;
			}
		default:
			[];
	}
}

function selectorKind(expr:GoAst.SelectorExpr):Int {
	return switch expr.x.id {
		case "StarExpr":
			if (expr.x.x.id == "Ident") {
				expr.x.x.kind;
			} else if (expr.x.x.id == "SelectorExpr") {
				expr.x.x.sel.kind;
			} else {
				-1;
			}
		case "SelectorExpr":
			if (expr.x.sel.id == "Ident") {
				expr.x.sel.kind;
			} else {
				-1;
			}
		case "Ident":
			expr.x.kind;
		default:
			-1;
	}
}


function addPointerSuffix(ct:ComplexType) {
	switch ct {
		case TPath(p):
			if (p.name.indexOf(".") != -1) {
				if (p.pack.length == 0) {
					final parts = p.name.split(".");
					final last = parts.pop() + "Pointer";
					final lastPack = parts.pop() + "pointer";
					parts.push(lastPack);
					parts.push(last);
					p.name = parts.join(".");
				}
			} else {
				p.name += "Pointer";
				p.pack.push(p.pack.pop() + "pointer");
			}
		default:
	}
}

function isClass(x:GoAst.Expr, info:Info):Bool {
	return switch x.id {
		case "Ident":
			info.renameIdents[x.name] == info.classNames[x.name];
		case "ParenExpr", "StarExpr":
			isClass(x.x, info);
		default:
			false;
	}
}


function destructureExpr(x:Expr, t:GoType):{x:Expr, t:GoType} {
	t = getUnderlying(t);
	if (isPointer(t)) {
		x = macro $x.value;
		t = getElem(t);
	}
	return {x: x, t: t};
}



// SPECS

function typeDeferReturn(info:Info, nullcheck:Bool):Expr {
	return macro for (defer in __deferstack__) {
		if (defer.ran)
			continue;
		defer.ran = true;
		defer.f();
	};
}


function mapExprArrayWithData<T>(el:Array<Expr>, data:T, f:(data:T, e:Expr) -> Expr):Array<Expr> {
	var ret = [];
	for (e in el)
		ret.push(f(data, e));
	return ret;
}

function mapExprWithData<T>(e:Expr, data:T, f:(data:T, e:Expr) -> Expr):Expr {
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

function opt2<T>(e:Null<Expr>, data:T, f:(data:T, Expr) -> Void):Void
	if (e != null)
		f(data, e);

function getBody(path:String):String {
	var index = path.lastIndexOf("/");
	var dir = "";
	if (index != -1) {
		dir = path.substr(0, index);
	}
	var name = path.substring(index += 1, index = path.indexOf(".", index));
	var selectors = path.substr(index + 1).split(".");
	var content = "";
	path = dir + "/" + name + ".hx";
	try {
		content = File.getContent(path);
	} catch (e) {
		throw e;
	}
	// remove comments
	var close:String = "";
	var closeIndex:Int = 0;
	var len = content.length - 1;
	var diff = 0;
	for (i in 0...len) {
		var i = i + diff;
		if (close == "") {
			if (content.charAt(i) == "/") {
				closeIndex = i;
				final next = content.charAt(i + 1);
				switch next {
					case "/":
						close = "\n";
					case "*":
						close = "*/";
				}
			}
		} else {
			if (content.charAt(i) == close.charAt(0) && close.length == 1 || content.charAt(i + 1) == close.charAt(1)) {
				diff -= i + 2 - closeIndex;
				content = content.substr(0, closeIndex) + content.substr(i + 2);
				close = "";
			}
		}
	}
	if (selectors.length > 1) {
		// inside of a class
		index = content.lastIndexOf("class " + selectors[0]);
		if (index == -1)
			throw "could not find class name: " + selectors[0] + " in file: " + path;
		content = content.substr(content.indexOf("{", index) + 1);
	}
	var func = selectors.pop();
	var funcDecl = 'function ';

	while (true) {
		index = content.indexOf(funcDecl);
		if (index == -1)
			break;
		final name = content.substring(index = index + funcDecl.length, index = content.indexOf("("));
		final isMain = name == func;
		index = content.indexOf("{", index) + 1; // first bracket
		content = content.substr(index);
		var enclosed:Int = 1;
		for (i in 0...content.length) {
			switch content.charAt(i) {
				case "{":
					enclosed++;
				case "}":
					if (--enclosed <= 0) {
						// either use the body or continue to cut
						if (isMain)
							return "{" + content.substr(0, i) + "}";
						content = content.substr(i);
						break;
					}
			}
		}
	}
	return "";
}

function defaultValue(type:GoType, info:Info, strict:Bool = true):Expr {
	function ct():ComplexType {
		return toComplexType(type, info);
	}
	if (type == null)
		return macro @:unknown_default_value null;
	return switch type {
		case mapType(_.get() => key, _.get() => value):
			final keyComplexType = toComplexType(key, info);
			final valueComplexType = toComplexType(value, info);
			final keyUnderlying = getUnderlying(key);
			switch keyUnderlying {
				case structType(_):
					return macro(({
						final x:stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType> = null;
						// x.t = new stdgo._internal.internal.reflect.Reflect._Type($keyT);
						// x.__defaultValue__ = () -> $defaultValueExpr;
						// @:mergeBlock $b{exprs};
						cast x;
					} : stdgo.GoMap<$keyComplexType, $valueComplexType>));
				default:
					// trace(keyUnderlying);
			}
			macro(null : stdgo.GoMap<$keyComplexType, $valueComplexType>);
		case sliceType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : stdgo.Slice<$t>);
		case arrayType(_.get() => elem, len):
			/*final t = toComplexType(elem, info);
				var value = defaultValue(elem, info);
				if (value == null)
					value = macro stdgo.Go.expectedValue();
				final lenExpr = makeExpr(len);
				final args = [lenExpr,lenExpr];
				if (len > 0)
					args.push(macro ...[for (i in 0...$lenExpr) $value]);
				macro new stdgo.GoArray<$t>($a{args}); */
			final param = toComplexType(elem, info);
			final size = makeExpr(len);
			final cap = size;
			final p:TypePath = {name: "GoArray", params: [TPType(param)], pack: ["stdgo"]};
			final s = genSlice(p, elem, size, cap, e -> e, info, null);
			s;
		case interfaceType(_):
			final ct = ct();
			macro(null : $ct);
		case chanType(_, _.get() => elem):
			final t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			macro(null : stdgo.Chan<$t>);
		case pointerType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : stdgo.Pointer<$t>);
		case signature(_, _, _, _):
			macro null;
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			switch elem {
				case arrayType(_):
					final s = defaultValue(elem, info, strict);
					macro $s.__setNil__();
				default:
					macro(null : stdgo.Ref<$ct>); // pointer can be nil
			}
		case named(path, _, underlying, alias, _):
			switch getUnderlying(underlying) {
				case chanType(_, _):
					final ct = ct();
					macro(null : $ct);
				case refType(_), pointerType(_), interfaceType(_), mapType(_, _), signature(_, _):
					final ct = ct();
					if (ct != null) {
						macro(null : $ct);
					} else {
						macro null;
					}
				case basic(_):
					final ct = ct();
					final e = defaultValue(underlying, info);
					macro($e : $ct);
				case structType(fields):
					final ct = ct();
					final fs:Array<ObjectField> = [];
					var e = macro {};
					if (alias) {
						e = createNamedObjectDecl(fields, (_, type) -> defaultValue(type, info), info);
					}
					macro($e : $ct);
				case sliceType(_.get() => elem):
					var t = namedTypePath(path, info);
					final ct = ct();
					macro(new $t(0, 0) : $ct);
				case arrayType(_.get() => elem, len):
					final t = namedTypePath(path, info);
					final elem = defaultValue(elem, info);
					final len = makeExpr(len);
					macro new $t($len, $len, ...[for (i in 0...$len) $elem]);
				default:
					var t = namedTypePath(path, info);
					macro new $t();
			}
		case basic(kind):
			if (strict) {
				switch kind {
					case bool_kind: macro false;
					case int_kind: macro(0 : stdgo.GoInt);
					case int8_kind: macro(0 : stdgo.GoInt8);
					case int16_kind: macro(0 : stdgo.GoInt16);
					case int32_kind: macro(0 : stdgo.GoInt32);
					case int64_kind: macro(0 : stdgo.GoInt64);
					case string_kind: macro("" : stdgo.GoString);
					case uint_kind: macro(0 : stdgo.GoUInt);
					case uint8_kind: macro(0 : stdgo.GoUInt8);
					case uint16_kind: macro(0 : stdgo.GoUInt16);
					case uint32_kind: macro(0 : stdgo.GoUInt32);
					case uint64_kind: macro(0 : stdgo.GoUInt64);
					case uintptr_kind: macro new stdgo.GoUIntptr(0);
					case float32_kind: macro(0 : stdgo.GoFloat32);
					case float64_kind: macro(0 : stdgo.GoFloat64);
					case complex64_kind: macro new stdgo.GoComplex64(0, 0);
					case complex128_kind: macro new stdgo.GoComplex128(0, 0);
					case untyped_bool_kind, untyped_rune_kind, untyped_string_kind, untyped_int_kind, untyped_float_kind, untyped_complex_kind:
						throw info.panic() + "untyped kind: " + kind;
					default: macro @:default_value null;
				}
			} else {
				switch kind {
					case bool_kind: macro false;
					case string_kind: macro "";
					case int_kind, int8_kind, int16_kind, int32_kind, int64_kind: macro 0;
					case uint_kind, uint8_kind, uint16_kind, uint32_kind, uint64_kind: macro 0;
					case uintptr_kind: macro new stdgo.GoUIntptr(0);
					case float32_kind, float64_kind: macro 0;
					case complex64_kind: macro new stdgo.GoComplex64(0, 0);
					case complex128_kind: macro new stdgo.GoComplex128(0, 0);
					default: macro @:default_value_kind
						null;
				}
			}
		case structType(fields):
			if (fields.length == 0)
				return macro {};
			var fs:Array<ObjectField> = [];
			for (field in fields) {
				if (field.optional)
					continue;
				fs.push({
					field: field.name,
					expr: defaultValue(field.type.get(), info, true),
				});
			}
			toExpr(EObjectDecl(fs));
		case invalidType:
			macro @:invalid_type null;
		case tuple(_, _.get() => vars):
			toExpr(EObjectDecl([
				for (i in 0...vars.length) {
					{
						field: "_" + i,
						expr: defaultValue(vars[i], info),
					}
				}
			]));
		case typeParam(name, _):
			// null;
			if (strict) {
				final t = TPath({name: className(name, info), pack: []});
				macro stdgo.Go.defaultValue((cast(null) : $t));
			} else {
				null;
			}
		case _var(_, _.get() => type):
			defaultValue(type, info, strict);
		default:
			throw info.panic() + "unsupported default value type: " + type;
	}
}

function getRecvName(recv:GoAst.Expr, info:Info):String {
	if (recv.id == "StarExpr" || recv.id == "IndexExpr" || recv.id == "IndexListExpr") {
		return getRecvName(recv.x, info);
	}
	final t = typeof(recv, info, false);
	// return className(recv.name, info);
	switch t {
		case named(path, _, _, _, _):
			path = Path.withoutDirectory(path);
			path = Path.extension(path);
			final index = path.indexOf("[");
			if (index != -1)
				path = path.substr(0, index);
			return className(path, info);
		default:
			throw info.panic() + "invalid recv type: " + t;
	}
}

function typeFieldListReturn(fieldList:GoAst.FieldList, info:Info, retValuesBool:Bool):ComplexType { // A single type or Anonymous struct type
	// reset
	var returnComplexTypes:Array<ComplexType> = [];
	var returnNamed:Bool = false;
	var returnNames:Array<String> = [];
	var returnTypes:Array<GoType> = [];
	if (fieldList == null) {
		final t = TPath({
			name: "Void",
			pack: [],
		});
		if (retValuesBool) {
			info.returnNamed = returnNamed;
			info.returnNames = returnNames;
			info.returnTypes = returnTypes;
			info.returnType = t;
			info.returnComplexTypes = returnComplexTypes;
		}
		return t;
	}

	for (group in fieldList.list) {
		final ct = typeExprType(group.type, info);
		var t = typeof(group.type, info, false);
		// trace(printer.printComplexType(ct), group.type.id);
		if (group.names.length == 0) {
			returnTypes.push(t);
			returnNames.push("_" + returnNames.length);
			returnComplexTypes.push(ct);
			continue;
		} else {
			returnNamed = true;
		}
		for (name in group.names) {
			if (name.name == "_") {
				returnNames.push("_" + returnNames.length);
			} else {
				returnNames.push(nameIdent(name.name, false, true, info));
			}
			returnTypes.push(t);
			returnComplexTypes.push(ct);
		}
	}

	var type = if (returnComplexTypes.length > 1) {
		TAnonymous([
			for (i in 0...returnComplexTypes.length)
				{
					name: "_" + i,
					pos: null,
					kind: FVar(returnComplexTypes[i])
				}
		]);
	} else {
		if (returnComplexTypes.length == 0) {
			TPath({
				name: "Void",
				pack: [],
			});
		} else {
			returnComplexTypes[0];
		}
	}

	if (retValuesBool) {
		info.returnNamed = returnNamed;
		info.returnNames = returnNames;
		info.returnTypes = returnTypes;
		info.returnType = type;
		info.returnComplexTypes = returnComplexTypes;
	}
	return type;
}

function getId(e:GoAst.Expr, info:Info):String {
	final e = hashTypeToExprType(e, info);
	return switch e.id {
		default:
			trace(e.id);
			e.id;
	}
}

function isVoid(ct:ComplexType):Bool {
	if (ct == null)
		return true;
	return switch ct {
		case TPath(p): p.name == "Void" && p.pack.length == 0;
		default:
			false;
	}
}

function typeFieldListArgs(list:GoAst.FieldList, info:Info):Array<FunctionArg> { // Array of FunctionArgs
	var args:Array<FunctionArg> = [];
	var counter = 0;
	if (list == null)
		return [];
	for (field in list.list) {
		var type = typeExprType(field.type, info); // null can be assumed as interface{}
		if (field.names.length == 0) {
			args.push({
				name: "_" + counter++,
				type: type,
			});
			continue;
		}
		for (name in field.names) {
			final argName = nameIdent(name.name, false, true, info);
			args.push({
				name: argName,
				type: type,
			});
		}
	}
	return args;
}

function typeFieldListComplexTypes(list:GoAst.FieldList, info:Info):Array<ComplexType> {
	var args:Array<ComplexType> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		if (field.names.length > 0) {
			for (name in field.names) {
				final name = nameIdent(name.name, false, true, info);
				args.push(TNamed(name, type));
			}
		} else {
			args.push(type);
		}
	}
	return args;
}

function typeFieldListMethods(list:GoAst.FieldList, info:Info):Array<Field> {
	var fields:Array<Field> = [];
	final oldRenameIdents = info.renameIdents.copy();
	for (field in list.list) {
		var expr:GoAst.FuncType = field.type;

		var ret = typeFieldListReturn(expr.results, info, false);
		var params = typeFieldListArgs(expr.params, info);
		if (ret == null || params == null)
			continue;
		final doc = getDocComment(field, field);
		for (n in field.names) {
			final name = formatHaxeFieldName(n.name, info);
			fields.push({
				name: name,
				pos: null,
				doc: doc,
				access: [APublic],
				kind: FFun({
					args: params,
					ret: ret,
				})
			});
		}
	}
	info.renameIdents = oldRenameIdents;
	return fields;
}

// can also be used for ObjectFields
function typeFields(list:Array<FieldType>, info:Info, access:Array<Access>, defaultBool:Bool, ?docs:Array<GoAst.CommentGroup>,
		?comments:Array<GoAst.CommentGroup>):Array<Field> {
	var fields:Array<Field> = [];
	for (i in 0...list.length) {
		final field = list[i];
		final ct = toComplexType(field.type.get(), info);
		var name = field.name;
		var meta:Metadata = [];
		if (field.embedded) {
			meta.push({name: ":embedded", pos: null});
		}
		if (field.tag != "") {
			final tag = makeString(rawEscapeSequences(field.tag));
			meta.push({name: ":tag", pos: null, params: [tag]});
		}
		if (field.optional)
			meta.push({name: ":optional", pos: null});
		var doc:String = getDocComment({doc: docs == null ? null : docs[i]}, {comment: comments == null ? null : comments[i]});
		// trace(name);
		// trace(field.type.get());
		// trace(toComplexType(field.type.get(), info));
		fields.push({
			name: name,
			pos: null,
			meta: meta,
			doc: doc,
			access: access == null ? typeAccess(name, true) : access,
			kind: FVar(toComplexType(field.type.get(), info), defaultBool ? defaultValue(field.type.get(), info, false) : null)
		});
	}
	return fields;
}

function typeFieldListFieldTypes(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool = false,
		docs:Array<GoAst.CommentGroup> = null, comments:Array<GoAst.CommentGroup> = null):Array<FieldType> {
	var fields:Array<Field> = [];
	var fieldList:Array<FieldType> = [];
	function getName(type:GoAst.Expr) {
		return switch type.id {
			case "SelectorExpr": type.sel.name;
			case "Ident": type.name;
			case "StarExpr": getName(type.x);
			case "Pointer": getName(type.elem);
			case "IndexExpr": getName(type.x);
			default: throw info.panic() + "unknown embedded: " + type.id;
		}
	}
	final comments = [];
	for (field in list.list) {
		var type = typeof(field.type, info, false);
		var tag = "";
		if (field.tag != "") {
			tag = field.tag;
		}
		if (docs != null)
			docs.push(field.doc);
		if (comments != null)
			comments.push(field.comment);
		if (field.names.length == 0) {
			// embedded
			var name:String = formatHaxeFieldName(getName(field.type), info);
			if (name == null)
				continue;
			fieldList.push({
				name: name,
				type: {get: () -> type},
				tag: tag,
				embedded: true,
				optional: false,
			});
		} else {
			for (n in field.names) {
				final name = formatHaxeFieldName(n.name, info);
				fieldList.push({
					name: name,
					type: {get: () -> type},
					embedded: false,
					tag: tag,
					optional: n.name == "_",
				});
			}
		}
	}
	return fieldList;
}

function typeFieldListFields(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	final docs:Array<GoAst.CommentGroup> = [];
	final comments:Array<GoAst.CommentGroup> = [];
	final fieldList = typeFieldListFieldTypes(list, info, access, defaultBool, docs, comments);
	return typeFields(fieldList, info, access, defaultBool, docs, comments);
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


function typeParamDeclsToTypeParams(list:Array<TypeParamDecl>):Array<TypeParam> {
	return list.map(p -> TPType(TPath({name: p.name, pack: []})));
}

function refToPointerWrapper(t:GoType):GoType {
	return switch t {
		case refType(_.get() => elem):
			pointerType({get: () -> refToPointerWrapper(elem)});
		default:
			t;
	}
}

function complexTypeToExpr(t:ComplexType):Expr {
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

function getParams(params:GoAst.FieldList, info:Info, allowNonGeneric:Bool = false):Array<TypeParamDecl> {
	final list:Array<TypeParamDecl> = [];
	if (params == null)
		return list;
	for (field in params.list) {
		for (name in field.names) {
			list.push({
				name: className(name.name, info),
				// constraints: [ct],
			});
		}
	}
	return list;
}

function makeString(str:String, ?kind):Expr {
	return toExpr(EConst(CString(str, kind)));
}

function makeStringLit(values:Array<{?s:String, ?code:Int}>):Expr {
	var e:Expr = macro("" : stdgo.GoString);
	final exprs:Array<Expr> = [];
	for (value in values) {
		final expr = if (value.s != null) {
			makeString(value.s);
		} else {
			final code = value.code;
			makeExpr(code);
		}
		exprs.push(expr);
	}
	if (exprs.length == 1) {
		switch exprs[0].expr {
			case EConst(CString(_)):
				return macro(${exprs[0]} : stdgo.GoString);
			default:
		}
	}
	return macro stdgo.Go.str($a{exprs});
}

function anyInterfaceType()
	return TPath({name: "AnyInterface", pack: ["stdgo"]});

function invalidComplexType()
	return null;

function errorType()
	return TPath({name: "Error", pack: ["stdgo"]});

function typeImport(imp:GoAst.ImportSpec, info:Info) {
	var doc = getDocComment(imp);
	imp.path = imp.path.substr(1, imp.path.length - 2); // remove quotes
	var path = normalizePath(imp.path);
	var alias = imp.name;
	var blankAlias = false;
	if (alias == "_") {
		blankAlias = true;
		alias = "";
	}
	path = toGoPath(path);
	final pack = path.split("/");
	pack.unshift("_internal");
	if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
		pack.unshift("stdgo");
	}
	final name = pack[pack.length - 1];
	pack.push(importClassName(name)); // shorten path here
	if (alias != "") {
		if (alias == ".") {
			/*info.data.imports.push({
				path: pack,
				alias: "",
				doc: info.global.noCommentsBool ? "" : doc,
			});*/
		} else {
			info.renameIdents[alias] = ".." + pack.join(".");
		}
	} else {
		if (name == "atomic_") {
			info.renameIdents["atomic"] = ".." + pack.join(".");
		}
		info.renameIdents[name] = ".." + pack.join(".");
	}
	/*if (blankAlias) {
		info.data.imports.push({
			path: pack,
			alias: alias,
			doc: info.global.noCommentsBool ? "" : doc,
		});
	}*/
}

function alreadyExistsTypeDef(td:TypeDefinition, info:Info):Bool {
	for (def in info.data.defs) {
		if (def.name == td.name) {
			return true;
		}
	}
	return false;
}

function getDocComment(doc:{doc:GoAst.CommentGroup}, ?comment:{comment:GoAst.CommentGroup}):String {
	var list:Array<String> = [];
	if (doc.doc != null && doc.doc.list != null) {
		var source = doc.doc.list.join("\n");
		source = sanatizeComment(source);
		list.push(source);
	}
	if (comment != null && comment.comment != null && comment.comment.list != null) {
		var source = comment.comment.list.join("\n");
		source = sanatizeComment(source);
		list.push(source);
	}
	return list.join("\n\n");
}

function getSource(value:{pos:Int, end:Int}, info:Info):String {
	if (!info.printGoCode || value.pos == value.end)
		return "";
	var source:String = "";
	try {
		source = File.getContent(info.data.location);
	} catch (e) {
		trace("error: " + e + " data: " + info.data.location);
		return "";
	}
	source = source.substring(value.pos, value.end);
	source = "\n" + source;
	source = sanatizeComment(source);
	return source;
}

function sanatizeComment(source:String):String {
	// sanatize comments
	if (source == "")
		return source;
	source = StringTools.replace(source, "/*", "");
	source = StringTools.replace(source, "*/", "");
	var lines = normalizeCLRF(source).split("\n");
	for (i in 0...lines.length) {
		if (lines[i].substr(0, 3) == "// ")
			lines[i] = lines[i].substr(3);
		if (lines[i].substr(0, 2) == "//")
			lines[i] = lines[i].substr(2);
	}
	lines = lines.map(line -> '* $line');
	return lines.join("\n");
}

function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return StringTools.startsWith(name, "_") ? [] : (isField ? [APublic] : []);
}

function getRestrictedName(name:String, info:Info):String { // all function defs are restricted names
	if (info.global.module == null)
		return name;
	for (file in info.global.module.files) {
		for (def in file.defs) {
			if (def == null)
				continue;
			if (def.name == name) {
				final pack = info.global.module.path.split(".");
				pack.unshift("_internal");
				if (stdgoList.indexOf(toGoPath(info.global.module.path)) == -1) { // haxe only type, otherwise the go code references Haxe
					pack.unshift("stdgo");
				}
				final name = pack[pack.length - 1];
				pack.push(file.name);
				pack.push(def.name);
				return pack.join(".");
			}
		}
	}
	return name;
}

function nameAscii(name:String):String {
	for (i in 0...name.length) {
		final char = name.charCodeAt(i);
		final isAscii = char > -1 && char < 128;
		if (!isAscii) {
			name = name.substr(0, i) + '$char' + name.substr(i + 1);
			if (i == 0)
				name = "_" + name;
		}
	}
	if (name.length > 255 - 80)
		name = name.substr(0, 255 - 80);
	return name;
}

function formatHaxeFieldName(name:String, info:Info) {
	final newName = nameIdent(name, false, true, info, false, false, null, true);
	return newName;
}

function untitle(name:String):String {
	if (isTitle(name)) {
		name = name.substr(0, 1).toLowerCase() + name.substring(1);
	} else {
		name = "_" + name;
	}
	return name;
}

function nameIdent(name:String, rename:Bool, overwrite:Bool, info:Info, unique:Bool = false, isSelect:Bool = false, objPath:String = null,
		formatField:Bool = false):String {
	name = nameAscii(name);
	if (name == "_")
		return "__" + info.blankCounter++;
	if (name == "null")
		return "nil";
	if (name == "main")
		return name;
	if (name == "False" || name == "True" || name == "Main")
		name = "_" + name;
	var oldName = name;
	if (overwrite) { // either an overwrite or a rename has been set
		if (name == "nil") {
			name = "_null";
		}
		if (name == "false" || name == "true") {
			name = "_" + name;
		}
	} else {
		if (name == "nil")
			return "null";
		if (name == "false" || name == "true")
			return name;
	}
	var setUnique = false;
	if (rename && info.renameIdents.exists(name)) {
		name = info.renameIdents[name];
		if (unique) {
			name = name + "_";
			setUnique = true;
		}
	} else {
		if (name.charAt(0) == "_") {
			name = name = "_" + name;
		} else {
			name = untitle(name);
		}
	}
	if (!formatField && rename && info.restricted != null && info.restricted.indexOf(name) != -1) {
		name = getRestrictedName(name, info);
	}
	if (unique && setUnique && info.restricted != null) {
		while (info.restricted.indexOf(name) != -1) {
			name = name + "_";
		}
		info.restricted.push(name);
	}
	if (reserved.indexOf(name) != -1) {
		name = name + "_";
	}
	if (objPath != null) {
		final path = normalizePath(objPath);
		final pack = path.split("/");
		pack.unshift("_internal");
		final path = toGoPath(path);
		if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
			pack.unshift("stdgo");
		}
		final filePath = pack.pop();
		pack.push(filePath);
		pack.push(title(filePath) + "_" + name.toLowerCase());
		pack.push(name);
		// name = path + "." + filePath + "_" + name + "." + name;
		name = pack.join(".");
	} else if (!formatField && !isSelect && !overwrite && info.localIdents.indexOf(name) == -1) {
		if (name.indexOf(".") != -1)
			return name;
		name = splitDepFullPathName(name, info);
	}
	if (!formatField && overwrite) {
		// if (oldName != name)
		info.renameIdents[oldName] = name;
		info.localIdents.push(name);
	}
	return name;
}

function splitDepFullPathName(name:String, info:Info):String {
	var path = getGlobalPath(info);
	/*if (StringTools.endsWith(path, "_test")) {
		path = path.substr(0, path.length - "_test".length);
	}*/
	var filePath = info.global.filePath;
	/*if (StringTools.endsWith(filePath, "_test")) {
		filePath = filePath.substr(0, filePath.length - "_test".length);
	}*/
	name = path + "." + filePath + "_" + name.toLowerCase() + "." + name;
	return name;
}

function normalizePath(path:String):String {
	path = StringTools.replace(path, ".", "dot");
	path = StringTools.replace(path, ":", "colon");
	path = StringTools.replace(path, "go-", "godash");
	path = StringTools.replace(path, "-", "dash");
	var path = path.split("/");
	for (i in 0...path.length) {
		if (reserved.indexOf(path[i]) != -1) {
			path[i] += "_";
		}
	}
	return path.join("/");
}

class Global {
	public var localSpecs:Map<String, Array<GoAst.Spec>> = [];
	public var gotoSystem:Bool = false;
	public var recoverBool:Bool = false;
	public var deferBool:Bool = false;
	public var debugBool:Bool = false;
	public var varTraceBool:Bool = false;
	public var funcTraceBool:Bool = false;
	public var stackBool:Bool = false;
	public var initBlock:Array<Expr> = [];
	public var path:String = "";
	public var filePath:String = "";
	public var module:HaxeAst.Module = null;
	public var order:Array<String> = [];
	public var noCommentsBool:Bool = false;
	public var renameClasses:Map<String, String> = [];
	public var externBool:Bool = false;
	public var root:String = "";
	public var hashMap:Map<UInt, Dynamic> = [];

	public inline function new() {}

	public function copy():Global {
		var g = new Global();
		g.localSpecs = localSpecs;
		g.initBlock = initBlock.copy();
		g.noCommentsBool = noCommentsBool;
		g.renameClasses = renameClasses;
		g.path = path;
		g.module = module;
		g.filePath = filePath;
		g.varTraceBool = varTraceBool;
		g.debugBool = debugBool;
		g.funcTraceBool = funcTraceBool;
		g.stackBool = stackBool;
		g.root = root;
		g.hashMap = hashMap;
		return g;
	}
}

@:forward
abstract DebugMap(Map<String, String>) from Map<String, String> to Map<String, String> {
	public function new() {
		this = new Map<String, String>();
	}

	@:op([])
	function get(x:String):String
		return this[x];

	@:op([])
	function set(key:String, value:String):String {
		/*if (key == "zone" || key == "_zone") {
			trace(key,value);
			throw "issue";
		}*/
		return this[key] = value;
	}
}

class Info {
	public var blankCounter:Int = 0;
	public var restricted:Array<String> = [];
	public var thisName:String = "";
	public var funcName:String = "";
	public var returnNames:Array<String> = [];
	public var returnType:ComplexType = null;
	public var returnNamed:Bool;
	public var printGoCode:Bool = false;
	public var returnTypes:Array<typer.Types.GoType> = [];
	public var returnComplexTypes:Array<ComplexType> = [];
	public var returnInterfaceBool:Array<Bool> = [];
	public var className:String = "";
	public var lastValue:GoAst.Expr = null;
	public var lastType:GoType = null;
	public var data:HaxeAst.HaxeFileType;
	public var switchTag:Expr = null;
	public var switchIndex:Int = 0;
	public var switchTagType:GoType = null;
	public var localIdents:Array<String> = [];

	public var renameIdents:Map<String, String> = []; // identifiers
	public var classNames:Map<String, String> = []; // class names named types
	public var renameClasses:Map<String, String> = []; // class names i.e TPath

	public var locals:Map<UInt, GoType> = [];
	public var localUnderlyingNames:Map<String, GoType> = [];

	public var global = new Global();

	public function new(?global) {
		if (global != null)
			this.global = global;
	}

	public inline function copy() {
		var info = new Info();
		info.blankCounter = blankCounter;
		info.returnTypes = returnTypes.copy();
		info.returnComplexTypes = returnComplexTypes.copy();
		info.returnNames = returnNames.copy();
		info.returnType = returnType;
		info.returnNamed = returnNamed;
		info.funcName = funcName;
		info.className = className;
		info.data = data;
		info.switchIndex = switchIndex;
		info.global = global; // .copy(); // imports, types
		info.renameIdents = renameIdents.copy();
		info.localIdents = localIdents.copy();
		info.classNames = classNames.copy();
		info.renameClasses = renameClasses.copy();
		info.locals = locals.copy();
		info.localUnderlyingNames = localUnderlyingNames.copy();
		return info;
	}

	public function panic():String {
		return "panic: " + global.filePath + ":" + global.path + ":" + global.module.name + ":" + className + ":" + funcName + ":\n";
	}
}

 // filepath of export.json also stored here


// @:formatter off

final stdgoList:Array<String> = parseData('stdgo.list');
final excludesList:Array<String> = parseData('excludes.json');
final exports:Array<String> = parseData('stdgoExports.json');
final externs:Array<String> = parseData('stdgoExterns.json');

function parseData(fileName:String) {
	final ext = Path.extension(fileName);
	return switch ext {
		case "json":
			parseDataJson(fileName);
		case "list":
			parseDataList(fileName);
		default:
			throw "unknown extension: " + ext;
	}
}

function parseDataList(fileName:String) {
	return normalizeCLRF(File.getContent('data/$fileName')).split("\n");
}

function parseDataJson(fileName:String) {
	return haxe.Json.parse(File.getContent('data/$fileName'));
}

final reserved = [
	"iterator",
	"keyValueIterator",
	"switch",
	"case",
	"break",
	"continue",
	"default",
	"is",
	"abstract",
	"cast",
	"catch",
	"class",
	"do",
	"function",
	"dynamic",
	"else",
	"enum",
	"extends",
	"extern",
	"final",
	"for",
	"function",
	"if",
	"interface",
	"implements",
	"import",
	"in",
	"inline",
	"macro",
	"new",
	"operator",
	"overload",
	"override",
	"package",
	"private",
	"public",
	"return",
	"static",
	"this",
	"throw",
	"try",
	"typedef",
	"untyped",
	"using",
	"var",
	"while",
	"construct",
	"null",
	"in",
	"wait",
	"length",
	"capacity",
	"bool",
	"float",
	"int",
	"struct",
	"offsetof",
	"alignof",
	"atomic",
	"map",
	"comparable",
	"environ",
	"trace",
	"haxe",
	"std",
	"_new",
];

final reservedClassNames = [
	"_Atomic",
	"Atomic",
	"Environ",
	"Class",
	"TClass",
	"Single", // Single is a 32bit float
	"Array",
	"Any",
	"Int",
	"Float",
	"String",
	"Int64",
	"AnyInterface",
	"Dynamic",
	"InvalidType",
	"Null",
	"Bool",
	// "Reflect",
	"Date",
	"ArrayAccess",
	"DateTools",
	"EReg",
	"Enum",
	"EnumValue",
	"IntIterator",
	"Iterable",
	"Iterator",
	"KeyValueIterable",
	"KeyValueIterator",
	"Lambda",
	// "List",
	"Map",
	// "Math",
	"Std",
	"Sys",
	// "StringBuf",
	"StringTools",
	"SysError",
	"Type",
	"T",
	// "UnicodeString",
	"ValueType",
	"Void",
	"XmlType",
	"GoArray",
	"GoMath",
	"Go",
	"Slice",
	"Pointer",
];

final basicTypes = [
	"uint",
	"uint8",
	"uint16",
	"uint32",
	"uint64",
	"int",
	"int8",
	"int16",
	"int32",
	"int64",
	"float32",
	"float64",
	"complex64",
	"complex128",
	"string",
	"byte", // alias for uint8
	"rune", // alias for int32
	"uintptr",
	"comparable",
];

var printer = new codegen.Printer();

// @formatter:on
