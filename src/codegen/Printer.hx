package codegen;

import haxe.macro.Expr.TypeParam;
import haxe.macro.Expr;

using StringTools;

class Printer extends haxe.macro.Printer {
	public function new() {
		super("    ");
	}

	override function printTypePath(tp:TypePath):String {
		removeExprParams(tp.params);
		return super.printTypePath(tp);
	}

	function removeExprParams(params:Null<Array<TypeParam>>) {
		if (params == null)
			return;
		for (param in params) {
			switch param {
				case TPExpr(_):
					params.remove(param);
				default:
			}
		}
	}

	override function printExpr(e:Expr):String {
		if (e == null || e.expr == null)
			return "#NULL_EXPR";
		return switch (e.expr) {
			case EField(e1, n, kind): kind == Safe ? '${printExpr(e1)}?.$n' : '${printExpr(e1)}.$n';
			case EMeta({name: ":comment", params: params}, e):
				"//" + printExpr(params[0]) + '\n$tabs' + printExpr(e);
			case EMeta({name: ":macro"}, e): "macro " + printExpr(e);
			case EMeta({name: ":mergeBlock"}, {expr: EBlock(exprs), pos: _}):
				if (exprs.length == 0)
					return "{}";
				return exprs.map(expr -> printExpr(expr)).join(";\n");
			case EMeta({name: ":define", params: params}, e):
				switch params[0].expr {
					case EConst(CString(s)):
						if (params.length == 2) {
							'#if $s ' + printExpr(e) + ' #else ${printExpr(params[1])} #end';
						} else {
							'#if $s ' + printExpr(e) + " #else null #end";
						}
					default:
						throw "invalid param expr: " + params[0].expr;
				}
			case EBlock([]): '{}';
			case EVars(vl) if (vl[0].isFinal): "final " + vl.map(printVar).join(", ");
			case EArrayDecl(el) if (el.length > 10): '[\n${printExprs(el, ",\n")}]';
			case ENew(tp, el) if (el.length > 10): 'new ${printTypePath(tp)}(\n${printExprs(el, ",\n")})';
			case ECall(e1, el) if (el.length > 10): '${printExpr(e1)}(${printExprs(el, ",\n")})';
			case ESwitch(e1, cl, edef):
				var old = tabs;
				tabs += tabString;
				var s = 'switch ${printExpr(e1)} {\n$tabs'
					+ cl.map(function(c) return 'case ${printExprs(c.values, ", ")}' + (c.guard != null ? ' if (${printExpr(c.guard)}):' : ":")
						+ (c.expr != null ? (opt(c.expr, printBlock)) : ""))
						.join('\n$tabs');
				if (edef != null)
					s += '\n${tabs}default:' + (edef.expr == null ? "" : printBlock(edef));
				tabs = old;
				s + '\n$tabs}';
			case ECheckType(e1, ct):
				switch e1.expr {
					case EParenthesis(e):
						e1.expr = e.expr;
					case ECheckType(e, t):
						if (printComplexType(ct) == printComplexType(t)) {
							return printExpr(e1);
						}
					default:
				}
				'(${printExpr(e1)} : ${printComplexType(ct)})';
			case EParenthesis(e1):
				e1 = haxe.macro.ExprTools.map(e1, e1 -> {
					switch e1.expr {
						case EParenthesis(e):
							switch e.expr {
								case EBinop(_, _, _), EBlock(_):
									e1;
								default:
									e;
							}
						default:
							e1;
					}
				});
				switch e1.expr {
					case ECheckType(_, _):
						printExpr(e1);
					default:
						'(${printExpr(e1)})';
				}
			default: super.printExpr(e);
		}
	}

	public function printBlock(e:Expr):String {
		switch e.expr {
			case EBlock(exprs):
				var t = tabs + tabString;
				return '\n$t' + [for (expr in exprs) printExpr(expr)].join(";\n") + (exprs.length > 0 ? ";" : "");
			default:
		}
		return printExpr(e) + ";";
	}

	override function escapeString(s:String, delim:String) { // remove protection of backslashes
		return delim
			+ s.replace("\n", "\\n")
				.replace("\t", "\\t")
				.replace("\r", "\\r")
				.replace("'", "\\'")
				.replace('"', "\\\"")
				#if sys .replace("\x00", "\\x00") #end + delim;
	}

	override function printTypeDefinition(t:TypeDefinition, printPackage:Bool = true):String {
		var externBool:Bool = !false;
		if (t == null)
			return "";
		if (t.isExtern) {
			t.isExtern = false;
			// externBool = true;
		}
		switch t.kind {
			case TDAbstract(tthis, from, to):
				return super.printTypeDefinition(t, printPackage) + "\n";
			case TDField(kind, access):
				return super.printTypeDefinition(t, printPackage) + "\n";
			default:
		}
		var old = tabs;
		tabs = tabString;
		// isExtern = public/private access for all TypeDefs except TDFields
		var str = t == null ? "#NULL" : (printPackage && t.pack.length > 0 && t.pack[0] != "" ? "package " + t.pack.join(".") + ";\n" : "")
			+ (t.doc != null && t.doc != "" ? "/**\n" + tabString + StringTools.replace(t.doc, "\n", "\n" + tabString) + "\n**/\n" : "")
			+ (t.meta != null && t.meta.length > 0 ? t.meta.map(printMetadata).join(" ") + " " : "")
			+ (externBool ? "" : "private ")
			+ switch t.kind {
				case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
					(isFinal ? "final " : "")
						+ (isAbstract ? "abstract " : "")
						+ (isInterface ? "interface " : "class ")
						+ t.name
						+ (t.params != null && t.params.length > 0 ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
						+ (superClass != null ? " extends " + printTypePath(superClass) : "")
						+ (interfaces != null ? (isInterface ? [for (tp in interfaces) " extends " + printTypePath(tp)] : [
							for (tp in interfaces)
								" implements " + printTypePath(tp)
						]).join("") : "")
						+ " {\n"
						+ [
							for (f in t.fields) {
								tabs + printFieldWithDelimiter(f);
							}
						].join("\n") + "\n}";
				case TDAlias(ct):
					"typedef "
					+ t.name
					+ ((t.params != null && t.params.length > 0) ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
					+ " = "
					+ ((ct == null) ? "#NULL" : (switch (ct) {
						case TExtend(tpl, fields): printExtension(tpl, fields);
						case TAnonymous(fields): printStructure(fields);
						case _: printComplexType(ct);
					}))
					+ ";";
				default:
					return super.printTypeDefinition(t, printPackage) + "\n";
			}
		return str + "\n";
	}

	override function printStructure(fields:Array<Field>):String {
		if (fields.length == 0)
			return "{}";
		return super.printStructure(fields);
	}

	override function printComplexType(ct:ComplexType):String {
		if (ct == null)
			return "#NULL_TYPE";
		switch ct {
			case TIntersection(tl):
				if (tl.length == 2) {
					switch tl[1] {
						case TExtend(tpl, fields):
							var types = [for (t in tpl) tabs + "> " + printTypePath(t) + ",\n"].join("");
							var fields = [for (f in fields) tabs + printField(f) + ";\n"].join("");
							return printComplexType(tl[0]) + ' & {\n${types}${fields}}';
						default:
					}
				}
			default:
		}
		return super.printComplexType(ct);
	}

	override function printFunctionArg(arg:FunctionArg):String {
		return (arg.meta != null ? [for (meta in arg.meta) printMetadata(meta)].join(" ") + " " : "") + super.printFunctionArg(arg);
	}
}
