package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Ellipsis_asInterface) class Ellipsis_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L517"
        if ((@:checkr _x ?? throw "null pointer dereference").elt != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L518"
            return (@:checkr _x ?? throw "null pointer dereference").elt.end();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L520"
        return ((@:checkr _x ?? throw "null pointer dereference").ellipsis + (3 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L482"
        return (@:checkr _x ?? throw "null pointer dereference").ellipsis;
    }
}
