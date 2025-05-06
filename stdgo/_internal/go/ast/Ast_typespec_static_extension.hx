package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeSpec_asInterface) class TypeSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L943"
        return (@:checkr _s ?? throw "null pointer dereference").type.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L925"
        return (@:checkr _s ?? throw "null pointer dereference").name.pos();
    }
}
