package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.StarExpr_asInterface) class StarExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L532"
        return (@:checkr _x ?? throw "null pointer dereference").x.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L498"
        return (@:checkr _x ?? throw "null pointer dereference").star;
    }
}
