package stdgo._internal.internal.dag;
@:structInit @:using(stdgo._internal.internal.dag.Dag_graph_static_extension.Graph_static_extension) class Graph {
    public var nodes : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _byLabel : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _edges : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
    public function new(?nodes:stdgo.Slice<stdgo.GoString>, ?_byLabel:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_edges:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>) {
        if (nodes != null) this.nodes = nodes;
        if (_byLabel != null) this._byLabel = _byLabel;
        if (_edges != null) this._edges = _edges;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Graph(nodes, _byLabel, _edges);
    }
}
