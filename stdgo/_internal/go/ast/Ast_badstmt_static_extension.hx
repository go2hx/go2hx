package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BadStmt_asInterface) class BadStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L787"
        return (@:checkr _s ?? throw "null pointer dereference").to;
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L765"
        return (@:checkr _s ?? throw "null pointer dereference").from;
    }
}
