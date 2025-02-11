package stdgo._internal.internal.dag;
@:keep @:allow(stdgo._internal.internal.dag.Dag.Graph_asInterface) class Graph_static_extension {
    @:keep
    @:tdfield
    static public function edges( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        var _edges = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (16 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in ((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))) {
            _edges = (_edges.__append__(_k?.__copy__()));
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_edges), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (((@:checkr _g ?? throw "null pointer dereference")._byLabel[_edges[(_i : stdgo.GoInt)]] ?? (0 : stdgo.GoInt)) < ((@:checkr _g ?? throw "null pointer dereference")._byLabel[_edges[(_j : stdgo.GoInt)]] ?? (0 : stdgo.GoInt)) : Bool);
        });
        return _edges;
    }
    @:keep
    @:tdfield
    static public function hasEdge( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString, _to:stdgo.GoString):Bool {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        return ((((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>)) != null) && (((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[_to] ?? false) : Bool);
    }
    @:keep
    @:tdfield
    static public function delEdge( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString, _to:stdgo.GoString):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        if (((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>)) != null) ((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>)).__remove__(_to);
    }
    @:keep
    @:tdfield
    static public function addEdge( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString, _to:stdgo.GoString):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        ((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[_to] = true;
    }
    @:keep
    @:tdfield
    static public function _addNode( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _label:stdgo.GoString):Bool {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        {
            var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._byLabel != null && (@:checkr _g ?? throw "null pointer dereference")._byLabel.__exists__(_label?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._byLabel[_label?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return false;
            };
        };
        (@:checkr _g ?? throw "null pointer dereference")._byLabel[_label] = ((@:checkr _g ?? throw "null pointer dereference").nodes.length);
        (@:checkr _g ?? throw "null pointer dereference").nodes = ((@:checkr _g ?? throw "null pointer dereference").nodes.__append__(_label?.__copy__()));
        (@:checkr _g ?? throw "null pointer dereference")._edges[_label] = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        return true;
    }
    @:keep
    @:tdfield
    static public function transitiveReduction( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        for (__0 => _i in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            for (__1 => _j in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                if (@:check2r _g.hasEdge(_i?.__copy__(), _j?.__copy__())) {
                    for (__2 => _k in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                        if (@:check2r _g.hasEdge(_j?.__copy__(), _k?.__copy__())) {
                            @:check2r _g.delEdge(_i?.__copy__(), _k?.__copy__());
                        };
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function topo( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>):stdgo.Slice<stdgo.GoString> {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        var _topo = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _g ?? throw "null pointer dereference").nodes.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _marks = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        var _visit:stdgo.GoString -> Void = null;
        _visit = function(_n:stdgo.GoString):Void {
            if ((_marks[_n] ?? false)) {
                return;
            };
            for (__0 => _to in @:check2r _g.edges(_n?.__copy__())) {
                _visit(_to?.__copy__());
            };
            _marks[_n] = true;
            _topo = (_topo.__append__(_n?.__copy__()));
        };
        for (__0 => _root in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            _visit(_root?.__copy__());
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = ((_topo.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
            while ((_i < _j : Bool)) {
                {
                    final __tmp__0 = _topo[(_j : stdgo.GoInt)].__copy__();
                    final __tmp__1 = _topo[(_i : stdgo.GoInt)].__copy__();
                    final __tmp__2 = _topo;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _topo;
                    final __tmp__5 = (_j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = __tmp__0;
                    _j = __tmp__1;
                };
            };
        };
        return _topo;
    }
    @:keep
    @:tdfield
    static public function transpose( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        var _old = (@:checkr _g ?? throw "null pointer dereference")._edges;
        (@:checkr _g ?? throw "null pointer dereference")._edges = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, Bool>>();
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, Bool>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>) : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
        for (__0 => _n in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            (@:checkr _g ?? throw "null pointer dereference")._edges[_n] = (({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        };
        for (_from => _tos in _old) {
            for (_to => _ in _tos) {
                ((@:checkr _g ?? throw "null pointer dereference")._edges[_to] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[_from] = true;
            };
        };
    }
}
