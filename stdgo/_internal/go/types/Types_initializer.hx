package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_initializer_static_extension.Initializer_static_extension) class Initializer {
    public var lhs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
    public var rhs : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?lhs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, ?rhs:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (lhs != null) this.lhs = lhs;
        if (rhs != null) this.rhs = rhs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Initializer(lhs, rhs);
    }
}
