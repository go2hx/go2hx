package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ForStmt_asInterface) class ForStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L846"
        return (@:checkr _s ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L784"
        return (@:checkr _s ?? throw "null pointer dereference").for_;
    }
}
