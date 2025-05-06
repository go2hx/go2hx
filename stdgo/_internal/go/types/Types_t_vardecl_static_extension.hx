package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_varDecl_asInterface) class T_varDecl_static_extension {
    @:keep
    @:tdfield
    static public function _node( _d:stdgo._internal.go.types.Types_t_vardecl.T_varDecl):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _d:stdgo._internal.go.types.Types_t_vardecl.T_varDecl = _d?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L385"
        return stdgo.Go.asInterface(_d._spec);
    }
}
