package stdgo._internal.internal.dag;
function _newGraph():stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> {
        return (stdgo.Go.setRef(({ _byLabel : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _edges : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, Bool>>();
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, Bool>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>) } : stdgo._internal.internal.dag.Dag_graph.Graph)) : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
    }
