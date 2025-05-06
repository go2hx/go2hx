package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncLit_asInterface) class FuncLit_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L523"
        return (@:checkr _x ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L484"
        return (@:checkr _x ?? throw "null pointer dereference").type.pos();
    }
}
