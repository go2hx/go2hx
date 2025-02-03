package stdgo.internal.dag;
@:structInit @:using(stdgo.internal.dag.Dag.Graph_static_extension) abstract Graph(stdgo._internal.internal.dag.Dag_Graph.Graph) from stdgo._internal.internal.dag.Dag_Graph.Graph to stdgo._internal.internal.dag.Dag_Graph.Graph {
    public var nodes(get, set) : Array<String>;
    function get_nodes():Array<String> return [for (i in this.nodes) i];
    function set_nodes(v:Array<String>):Array<String> {
        this.nodes = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _byLabel(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__byLabel():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._byLabel;
    function set__byLabel(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._byLabel = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var _edges(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>;
    function get__edges():stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> return this._edges;
    function set__edges(v:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>):stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> {
        this._edges = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
        return v;
    }
    public function new(?nodes:Array<String>, ?_byLabel:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_edges:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>) this = new stdgo._internal.internal.dag.Dag_Graph.Graph(([for (i in nodes) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_byLabel : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), (_edges : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
