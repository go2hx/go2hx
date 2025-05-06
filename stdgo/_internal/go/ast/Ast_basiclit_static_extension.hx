package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BasicLit_asInterface) class BasicLit_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L522"
        return ((((@:checkr _x ?? throw "null pointer dereference").valuePos : stdgo.GoInt) + ((@:checkr _x ?? throw "null pointer dereference").value.length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L483"
        return (@:checkr _x ?? throw "null pointer dereference").valuePos;
    }
}
