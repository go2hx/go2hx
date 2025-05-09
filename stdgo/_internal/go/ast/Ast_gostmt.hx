package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_gostmt_static_extension.GoStmt_static_extension) class GoStmt {
    public var go : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
    public function new(?go:stdgo._internal.go.token.Token_pos.Pos, ?call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) {
        if (go != null) this.go = go;
        if (call != null) this.call = call;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GoStmt(go, call);
    }
}
