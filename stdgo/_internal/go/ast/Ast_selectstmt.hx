package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_selectstmt_static_extension.SelectStmt_static_extension) class SelectStmt {
    public var select : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?select:stdgo._internal.go.token.Token_pos.Pos, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (select != null) this.select = select;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectStmt(select, body);
    }
}
