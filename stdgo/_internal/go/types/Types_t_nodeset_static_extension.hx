package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_nodeSet_asInterface) class T_nodeSet_static_extension {
    @:keep
    @:tdfield
    static public function _add( _s:stdgo.Ref<stdgo._internal.go.types.Types_t_nodeset.T_nodeSet>, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t_nodeset.T_nodeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L205"
        if ((_s : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet) == null) {
            (_s : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet).__setData__((({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>, Bool>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>, Bool>) : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet));
        };
        ((_s : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet))[_p] = true;
    }
}
