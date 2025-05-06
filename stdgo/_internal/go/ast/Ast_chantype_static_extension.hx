package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ChanType_asInterface) class ChanType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L546"
        return (@:checkr _x ?? throw "null pointer dereference").value.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L512"
        return (@:checkr _x ?? throw "null pointer dereference").begin;
    }
}
