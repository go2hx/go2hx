package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.AssignStmt_asInterface) class AssignStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L801"
        return (@:checkr _s ?? throw "null pointer dereference").rhs[(((@:checkr _s ?? throw "null pointer dereference").rhs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L772"
        return (@:checkr _s ?? throw "null pointer dereference").lhs[(0 : stdgo.GoInt)].pos();
    }
}
