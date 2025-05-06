package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_switchstmt_static_extension.SwitchStmt_static_extension) class SwitchStmt {
    public var switch_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var init : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var tag : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?switch_:stdgo._internal.go.token.Token_pos.Pos, ?init:stdgo._internal.go.ast.Ast_stmt.Stmt, ?tag:stdgo._internal.go.ast.Ast_expr.Expr, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (tag != null) this.tag = tag;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SwitchStmt(switch_, init, tag, body);
    }
}
