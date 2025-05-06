package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.MapType_asInterface) class MapType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L545"
        return (@:checkr _x ?? throw "null pointer dereference").value.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L511"
        return (@:checkr _x ?? throw "null pointer dereference").map_;
    }
}
