package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.SendStmt_asInterface) class SendStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L797"
        return (@:checkr _s ?? throw "null pointer dereference").value.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L770"
        return (@:checkr _s ?? throw "null pointer dereference").chan.pos();
    }
}
