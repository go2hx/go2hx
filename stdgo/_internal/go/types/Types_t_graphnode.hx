package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_graphnode_static_extension.T_graphNode_static_extension) class T_graphNode {
    public var _obj : stdgo._internal.go.types.Types_t_dependency.T_dependency = (null : stdgo._internal.go.types.Types_t_dependency.T_dependency);
    public var _pred : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet = (null : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet);
    public var _succ : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet = (null : stdgo._internal.go.types.Types_t_nodeset.T_nodeSet);
    public var _index : stdgo.GoInt = 0;
    public var _ndeps : stdgo.GoInt = 0;
    public function new(?_obj:stdgo._internal.go.types.Types_t_dependency.T_dependency, ?_pred:stdgo._internal.go.types.Types_t_nodeset.T_nodeSet, ?_succ:stdgo._internal.go.types.Types_t_nodeset.T_nodeSet, ?_index:stdgo.GoInt, ?_ndeps:stdgo.GoInt) {
        if (_obj != null) this._obj = _obj;
        if (_pred != null) this._pred = _pred;
        if (_succ != null) this._succ = _succ;
        if (_index != null) this._index = _index;
        if (_ndeps != null) this._ndeps = _ndeps;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_graphNode(_obj, _pred, _succ, _index, _ndeps);
    }
}
