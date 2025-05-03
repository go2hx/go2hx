package stdgo._internal.internal.dag;
@:keep @:allow(stdgo._internal.internal.dag.Dag.Graph_asInterface) class Graph_static_extension {
    @:keep
    @:tdfield
    static public function edges( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        var _edges = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (16 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L84"
        for (_k => _ in ((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))) {
            _edges = (_edges.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L87"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_edges), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L87"
            return (((@:checkr _g ?? throw "null pointer dereference")._byLabel[_edges[(_i : stdgo.GoInt)]] ?? (0 : stdgo.GoInt)) < ((@:checkr _g ?? throw "null pointer dereference")._byLabel[_edges[(_j : stdgo.GoInt)]] ?? (0 : stdgo.GoInt)) : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L88"
        return _edges;
    }
    @:keep
    @:tdfield
    static public function hasEdge( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString, _to:stdgo.GoString):Bool {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L79"
        return ((((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>)) != null) && (((@:checkr _g ?? throw "null pointer dereference")._edges[_from] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[_to] ?? false) : Bool);
    }
    @:keep
    @:tdfield
    static public function delEdge( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>, _from:stdgo.GoString, _to:stdgo.GoString):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L75"
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
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L61"
        {
            var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._byLabel != null && (@:checkr _g ?? throw "null pointer dereference")._byLabel.__exists__(_label?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._byLabel[_label?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L62"
                return false;
            };
        };
        (@:checkr _g ?? throw "null pointer dereference")._byLabel[_label] = ((@:checkr _g ?? throw "null pointer dereference").nodes.length);
        (@:checkr _g ?? throw "null pointer dereference").nodes = ((@:checkr _g ?? throw "null pointer dereference").nodes.__append__(_label?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        (@:checkr _g ?? throw "null pointer dereference")._edges[_label] = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L67"
        return true;
    }
    @:keep
    @:tdfield
    static public function transitiveReduction( _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph> = _g;
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L52"
        for (__0 => _i in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L53"
            for (__1 => _j in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L54"
                if (_g.hasEdge(_i?.__copy__(), _j?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L55"
                    for (__2 => _k in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L56"
                        if (_g.hasEdge(_j?.__copy__(), _k?.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L57"
                            _g.delEdge(_i?.__copy__(), _k?.__copy__());
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
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L30"
            if ((_marks[_n] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L31"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L33"
            for (__0 => _to in _g.edges(_n?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L34"
                _visit(_to?.__copy__());
            };
            _marks[_n] = true;
            _topo = (_topo.__append__(_n?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L39"
        for (__0 => _root in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L40"
            _visit(_root?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L42"
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
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = @:binopAssign __tmp__0;
                    _j = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L45"
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
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L12"
        for (__0 => _n in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            (@:checkr _g ?? throw "null pointer dereference")._edges[_n] = (({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L16"
        for (_from => _tos in _old) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/alg.go#L17"
            for (_to => _ in _tos) {
                ((@:checkr _g ?? throw "null pointer dereference")._edges[_to] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[_from] = true;
            };
        };
    }
}
