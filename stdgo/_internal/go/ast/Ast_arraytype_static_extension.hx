package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ArrayType_asInterface) class ArrayType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L536"
        return (@:checkr _x ?? throw "null pointer dereference").elt.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L502"
        return (@:checkr _x ?? throw "null pointer dereference").lbrack;
    }
}
