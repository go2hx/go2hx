package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.SliceExpr_asInterface) class SliceExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L529"
        return ((@:checkr _x ?? throw "null pointer dereference").rbrack + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L495"
        return (@:checkr _x ?? throw "null pointer dereference").x.pos();
    }
}
