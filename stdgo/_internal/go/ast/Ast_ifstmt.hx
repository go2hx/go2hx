package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_ifstmt_static_extension.IfStmt_static_extension) class IfStmt {
    public var if_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var init : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var cond : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public var else_ : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public function new(?if_:stdgo._internal.go.token.Token_pos.Pos, ?init:stdgo._internal.go.ast.Ast_stmt.Stmt, ?cond:stdgo._internal.go.ast.Ast_expr.Expr, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, ?else_:stdgo._internal.go.ast.Ast_stmt.Stmt) {
        if (if_ != null) this.if_ = if_;
        if (init != null) this.init = init;
        if (cond != null) this.cond = cond;
        if (body != null) this.body = body;
        if (else_ != null) this.else_ = else_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IfStmt(if_, init, cond, body, else_);
    }
}
