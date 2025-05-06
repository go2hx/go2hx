package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_returnstmt_static_extension.ReturnStmt_static_extension) class ReturnStmt {
    public var return_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var results : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public function new(?return_:stdgo._internal.go.token.Token_pos.Pos, ?results:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) {
        if (return_ != null) this.return_ = return_;
        if (results != null) this.results = results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReturnStmt(return_, results);
    }
}
