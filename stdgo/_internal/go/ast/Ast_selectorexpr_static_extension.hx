package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.SelectorExpr_asInterface) class SelectorExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L526"
        return (@:checkr _x ?? throw "null pointer dereference").sel.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L492"
        return (@:checkr _x ?? throw "null pointer dereference").x.pos();
    }
}
