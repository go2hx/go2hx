package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_deferstmt_static_extension.DeferStmt_static_extension) class DeferStmt {
    public var defer : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
    public function new(?defer:stdgo._internal.go.token.Token_pos.Pos, ?call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) {
        if (defer != null) this.defer = defer;
        if (call != null) this.call = call;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeferStmt(defer, call);
    }
}
