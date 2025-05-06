package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.GoStmt_asInterface) class GoStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L802"
        return (@:checkr _s ?? throw "null pointer dereference").call.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L773"
        return (@:checkr _s ?? throw "null pointer dereference").go;
    }
}
