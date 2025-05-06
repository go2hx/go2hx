package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.IndexListExpr_asInterface) class IndexListExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L528"
        return ((@:checkr _x ?? throw "null pointer dereference").rbrack + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L494"
        return (@:checkr _x ?? throw "null pointer dereference").x.pos();
    }
}
