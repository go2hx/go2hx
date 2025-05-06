package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_monograph_static_extension.T_monoGraph_static_extension) class T_monoGraph {
    public var _vertices : stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex>);
    public var _edges : stdgo.Slice<stdgo._internal.go.types.Types_t_monoedge.T_monoEdge> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_monoedge.T_monoEdge>);
    public var _canon : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
    public var _nameIdx : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>);
    public function new(?_vertices:stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex>, ?_edges:stdgo.Slice<stdgo._internal.go.types.Types_t_monoedge.T_monoEdge>, ?_canon:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, ?_nameIdx:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>) {
        if (_vertices != null) this._vertices = _vertices;
        if (_edges != null) this._edges = _edges;
        if (_canon != null) this._canon = _canon;
        if (_nameIdx != null) this._nameIdx = _nameIdx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_monoGraph(_vertices, _edges, _canon, _nameIdx);
    }
}
