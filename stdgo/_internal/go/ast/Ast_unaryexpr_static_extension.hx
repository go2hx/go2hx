package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.UnaryExpr_asInterface) class UnaryExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L533"
        return (@:checkr _x ?? throw "null pointer dereference").x.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L499"
        return (@:checkr _x ?? throw "null pointer dereference").opPos;
    }
}
