package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BinaryExpr_asInterface) class BinaryExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L534"
        return (@:checkr _x ?? throw "null pointer dereference").y.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L500"
        return (@:checkr _x ?? throw "null pointer dereference").x.pos();
    }
}
