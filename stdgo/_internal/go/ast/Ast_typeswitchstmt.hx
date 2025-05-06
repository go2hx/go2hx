package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_typeswitchstmt_static_extension.TypeSwitchStmt_static_extension) class TypeSwitchStmt {
    public var switch_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var init : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var assign : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?switch_:stdgo._internal.go.token.Token_pos.Pos, ?init:stdgo._internal.go.ast.Ast_stmt.Stmt, ?assign:stdgo._internal.go.ast.Ast_stmt.Stmt, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (assign != null) this.assign = assign;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeSwitchStmt(switch_, init, assign, body);
    }
}
