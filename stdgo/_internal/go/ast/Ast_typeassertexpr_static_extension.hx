package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeAssertExpr_asInterface) class TypeAssertExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L530"
        return ((@:checkr _x ?? throw "null pointer dereference").rparen + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L496"
        return (@:checkr _x ?? throw "null pointer dereference").x.pos();
    }
}
