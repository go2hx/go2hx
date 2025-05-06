package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_caseclause_static_extension.CaseClause_static_extension) class CaseClause {
    public var case_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var list : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var colon : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var body : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
    public function new(?case_:stdgo._internal.go.token.Token_pos.Pos, ?list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?body:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) {
        if (case_ != null) this.case_ = case_;
        if (list != null) this.list = list;
        if (colon != null) this.colon = colon;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CaseClause(case_, list, colon, body);
    }
}
