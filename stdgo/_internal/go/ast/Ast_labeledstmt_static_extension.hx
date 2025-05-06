package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.LabeledStmt_asInterface) class LabeledStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L795"
        return (@:checkr _s ?? throw "null pointer dereference").stmt.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L768"
        return (@:checkr _s ?? throw "null pointer dereference").label.pos();
    }
}
