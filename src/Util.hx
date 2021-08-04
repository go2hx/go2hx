import haxe.macro.Expr;

function makeExpr(o:Dynamic):Expr {
    if ((o is String))
        return toExpr(EConst(CString(o)));
    if ((o is Int))
        return toExpr(EConst(CInt(Std.string(o))));
    var t = Type.typeof(o);
    switch t {
        case TEnum(e):
            e.getName();
        default:
    }
    throw "unable to create";
}

function toExpr(def:ExprDef):Expr {
	return {expr: def, pos: null};
}