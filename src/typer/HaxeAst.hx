package typer;

import haxe.macro.Expr;


typedef Module = {name:String, path:String, files:Array<HaxeFileType>, isMain:Bool}
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
}
function exprToStringValue(e:Expr):String {
	switch e.expr {
		case EConst(CString(s)):
			return s;
		default:
			throw "invalid expr for exprToString: " + e.expr;
	}
}

function escapeParens(expr:Expr):Expr {

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

function translateStruct(e:Expr, fromType:GoType, toType:GoType, info:Info):Expr {

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
wrapper.fields.unshift(field);
staticExtension.fields.unshift(staticField);
}

function mapReturnToThrow(expr:Expr):Expr {

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

function typeGoto(label:Expr):Expr {
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

//typedef FieldType = haxe.macro.Expr.FieldType;
//typedef Field = haxe.macro.Expr.Field;