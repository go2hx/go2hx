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
            case ECall(e1, el) if(el.length > 10): '${printExpr(e1)}(${printExprs(el, ",\n")})';
            default: super.printExpr(e);
        }
    }
    override function printComplexType(ct:ComplexType):String {
        if (ct == null)
            return "#NULL_TYPE";
        return super.printComplexType(ct);
    }
    override function printField(field:Field):String {
        return super.printField(field);
    }
    override function printFunctionArg(arg:FunctionArg):String {
        return (arg.meta != null ? [for (meta in arg.meta) printMetadata(meta)].join(" ") + " " : "") + super.printFunctionArg(arg);
    }
}