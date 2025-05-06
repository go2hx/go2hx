package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.KeyValueExpr_asInterface) class KeyValueExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L535"
        return (@:checkr _x ?? throw "null pointer dereference").value.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L501"
        return (@:checkr _x ?? throw "null pointer dereference").key.pos();
    }
}
