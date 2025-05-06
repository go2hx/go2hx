package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.IncDecStmt_asInterface) class IncDecStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L799"
        return ((@:checkr _s ?? throw "null pointer dereference").tokPos + (2 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L771"
        return (@:checkr _s ?? throw "null pointer dereference").x.pos();
    }
}
