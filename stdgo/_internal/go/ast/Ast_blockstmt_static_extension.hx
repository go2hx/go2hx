package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BlockStmt_asInterface) class BlockStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L817"
        if ((@:checkr _s ?? throw "null pointer dereference").rbrace.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L818"
            return ((@:checkr _s ?? throw "null pointer dereference").rbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L820"
        {
            var _n = ((@:checkr _s ?? throw "null pointer dereference").list.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L821"
                return (@:checkr _s ?? throw "null pointer dereference").list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L823"
        return ((@:checkr _s ?? throw "null pointer dereference").lbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L777"
        return (@:checkr _s ?? throw "null pointer dereference").lbrace;
    }
}
