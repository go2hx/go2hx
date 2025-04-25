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