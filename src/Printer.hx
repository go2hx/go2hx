import haxe.macro.Expr;

class Printer extends haxe.macro.Printer {
	public function new() {
		super("    ");
	}

	override function printExpr(e:Expr):String {
		if (e == null)
			return "#NULL_EXPR";
		return switch (e.expr) {
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


	override function printTypeDefinition(t:TypeDefinition, printPackage:Bool = true):String {
		var externBool:Bool = false;
		if (t.isExtern) {
			t.isExtern = false;
			externBool = true;
		}
		switch t.kind {
			case TDAlias(td):
				return super.printTypeDefinition(t,printPackage);
			case TDField(kind, access):
				return super.printTypeDefinition(t,printPackage);
			default:
		}
		var old = tabs;
		tabs = tabString;
		//isExtern = public/private access for all TypeDefs except TDFields
		var str = t == null ? "#NULL" : (printPackage && t.pack.length > 0 && t.pack[0] != "" ? "package " + t.pack.join(".") + ";\n" : "")
			+ (t.doc != null && t.doc != "" ? "/**\n" + tabString + StringTools.replace(t.doc, "\n", "\n" + tabString) + "\n**/\n" : "")
			+ (t.meta != null && t.meta.length > 0 ? t.meta.map(printMetadata).join(" ") + " " : "")
			+ (externBool ? "" : "private ") + switch t.kind {
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
						].join("\n")
						+ "\n}";
				case TDAlias(ct):
					"typedef "
					+ t.name
					+ ((t.params != null && t.params.length > 0) ? "<" + t.params.map(printTypeParamDecl).join(", ") + ">" : "")
					+ " = "
					+ (switch (ct) {
						case TExtend(tpl, fields): printExtension(tpl, fields);
						case TAnonymous(fields): printStructure(fields);
						case _: printComplexType(ct);
					})
					+ ";";
				default:
					"";
			}
		return str;
	}

	override function printComplexType(ct:ComplexType):String {
		if (ct == null)
			return "#NULL_TYPE";
		return super.printComplexType(ct);
	}

	override function printFunctionArg(arg:FunctionArg):String {
		return (arg.meta != null ? [for (meta in arg.meta) printMetadata(meta)].join(" ") + " " : "") + super.printFunctionArg(arg);
	}
}
