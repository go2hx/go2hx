package stdgo.internal.dag;
class Graph_static_extension {
    static public function edges(_g:Graph, _from:String):Array<String> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        final _from = (_from : stdgo.GoString);
        return [for (i in stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.edges(_g, _from)) i];
    }
    static public function hasEdge(_g:Graph, _from:String, _to:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.hasEdge(_g, _from, _to);
    }
    static public function delEdge(_g:Graph, _from:String, _to:String):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.delEdge(_g, _from, _to);
    }
    static public function addEdge(_g:Graph, _from:String, _to:String):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.addEdge(_g, _from, _to);
    }
    static public function _addNode(_g:Graph, _label:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        final _label = (_label : stdgo.GoString);
        return stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension._addNode(_g, _label);
    }
    static public function transitiveReduction(_g:Graph):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.transitiveReduction(_g);
    }
    static public function topo(_g:Graph):Array<String> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        return [for (i in stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.topo(_g)) i];
    }
    static public function transpose(_g:Graph):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_Graph.Graph>);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.transpose(_g);
    }
}
