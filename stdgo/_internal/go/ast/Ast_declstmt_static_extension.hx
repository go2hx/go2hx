package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.DeclStmt_asInterface) class DeclStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L788"
        return (@:checkr _s ?? throw "null pointer dereference").decl.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L766"
        return (@:checkr _s ?? throw "null pointer dereference").decl.pos();
    }
}
