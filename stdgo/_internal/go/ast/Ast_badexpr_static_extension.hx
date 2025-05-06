package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BadExpr_asInterface) class BadExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L514"
        return (@:checkr _x ?? throw "null pointer dereference").to;
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L480"
        return (@:checkr _x ?? throw "null pointer dereference").from;
    }
}
