package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_constDecl_asInterface) class T_constDecl_static_extension {
    @:keep
    @:tdfield
    static public function _node( _d:stdgo._internal.go.types.Types_t_constdecl.T_constDecl):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _d:stdgo._internal.go.types.Types_t_constdecl.T_constDecl = _d?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L384"
        return stdgo.Go.asInterface(_d._spec);
    }
}
