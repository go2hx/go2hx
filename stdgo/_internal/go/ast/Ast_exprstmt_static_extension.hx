package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ExprStmt_asInterface) class ExprStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L796"
        return (@:checkr _s ?? throw "null pointer dereference").x.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L769"
        return (@:checkr _s ?? throw "null pointer dereference").x.pos();
    }
}
