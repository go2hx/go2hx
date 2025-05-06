package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.StructType_asInterface) class StructType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L537"
        return (@:checkr _x ?? throw "null pointer dereference").fields.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L503"
        return (@:checkr _x ?? throw "null pointer dereference").struct_;
    }
}
