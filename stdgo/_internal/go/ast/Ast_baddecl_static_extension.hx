package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BadDecl_asInterface) class BadDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L997"
        return (@:checkr _d ?? throw "null pointer dereference").to;
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L993"
        return (@:checkr _d ?? throw "null pointer dereference").from;
    }
}
