package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_typeDecl_asInterface) class T_typeDecl_static_extension {
    @:keep
    @:tdfield
    static public function _node( _d:stdgo._internal.go.types.Types_t_typedecl.T_typeDecl):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _d:stdgo._internal.go.types.Types_t_typedecl.T_typeDecl = _d?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L386"
        return stdgo.Go.asInterface(_d._spec);
    }
}
