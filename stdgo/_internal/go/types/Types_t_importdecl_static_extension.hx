package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_importDecl_asInterface) class T_importDecl_static_extension {
    @:keep
    @:tdfield
    static public function _node( _d:stdgo._internal.go.types.Types_t_importdecl.T_importDecl):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _d:stdgo._internal.go.types.Types_t_importdecl.T_importDecl = _d?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L383"
        return stdgo.Go.asInterface(_d._spec);
    }
}
