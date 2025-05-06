package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeSwitchStmt_asInterface) class TypeSwitchStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L838"
        return (@:checkr _s ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L781"
        return (@:checkr _s ?? throw "null pointer dereference").switch_;
    }
}
