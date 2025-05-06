package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_forstmt_static_extension.ForStmt_static_extension) class ForStmt {
    public var for_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var init : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var cond : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var post : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?for_:stdgo._internal.go.token.Token_pos.Pos, ?init:stdgo._internal.go.ast.Ast_stmt.Stmt, ?cond:stdgo._internal.go.ast.Ast_expr.Expr, ?post:stdgo._internal.go.ast.Ast_stmt.Stmt, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (for_ != null) this.for_ = for_;
        if (init != null) this.init = init;
        if (cond != null) this.cond = cond;
        if (post != null) this.post = post;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ForStmt(for_, init, cond, post, body);
    }
}
