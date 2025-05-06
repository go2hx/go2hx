package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.CallExpr_asInterface) class CallExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L531"
        return ((@:checkr _x ?? throw "null pointer dereference").rparen + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L497"
        return (@:checkr _x ?? throw "null pointer dereference").fun.pos();
    }
}
