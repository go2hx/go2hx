package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_blockstmt_static_extension.BlockStmt_static_extension) class BlockStmt {
    public var lbrace : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var list : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
    public var rbrace : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?lbrace:stdgo._internal.go.token.Token_pos.Pos, ?list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, ?rbrace:stdgo._internal.go.token.Token_pos.Pos) {
        if (lbrace != null) this.lbrace = lbrace;
        if (list != null) this.list = list;
        if (rbrace != null) this.rbrace = rbrace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BlockStmt(lbrace, list, rbrace);
    }
}
