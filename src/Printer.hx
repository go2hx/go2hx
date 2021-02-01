import haxe.macro.Expr;

class Printer extends haxe.macro.Printer {
    public function new() {
        super("    ");
    }
    override function printExpr(e:Expr):String {
        return switch (e.expr) {
            case EArrayDecl(el) if (el.length > 10): '[\n${printExprs(el, ",\n")}]';
            default: super.printExpr(e);
        }
    }
    override function printField(field:Field):String {
        return super.printField(field);
    }
}