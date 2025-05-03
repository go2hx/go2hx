package stdgo._internal.internal.dag;
function parse(_dag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>; var _1 : stdgo.Error; } {
        var _g = stdgo._internal.internal.dag.Dag__newgraph._newGraph();
        var _disallowed = (new stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.dag.Dag_t_rule.T_rule)])) : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>);
        var __tmp__ = stdgo._internal.internal.dag.Dag__parserules._parseRules(_dag?.__copy__()), _rules:stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L99"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L100"
            return { _0 : null, _1 : _err };
        };
        var _errors:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _errorf = function(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {
            var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
            _errors = (_errors.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L108"
        for (__0 => _r in _rules) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L109"
            if (_r._op == (("!<" : stdgo.GoString))) {
                _disallowed = (_disallowed.__append__(_r?.__copy__()) : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>);
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L111"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L113"
            for (__1 => _def in _r._def) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L114"
                if (_def == (("NONE" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L115"
                    _errorf(("NONE cannot be a predecessor" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L116"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L118"
                if (!_g._addNode(_def?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L119"
                    _errorf(("multiple definitions for %s" : stdgo.GoString), stdgo.Go.toInterface(_def));
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L121"
                for (__2 => _less in _r._less) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L122"
                    if (_less == (("NONE" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L123"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L125"
                    {
                        var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._byLabel != null && (@:checkr _g ?? throw "null pointer dereference")._byLabel.__exists__(_less?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._byLabel[_less?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __3:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L126"
                            _errorf(("use of %s before its definition" : stdgo.GoString), stdgo.Go.toInterface(_less));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L128"
                            _g.addEdge(_def?.__copy__(), _less?.__copy__());
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L135"
        for (__1 => _tos in (@:checkr _g ?? throw "null pointer dereference")._edges) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L136"
            for (_to => _ in _tos) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L137"
                if (((@:checkr _g ?? throw "null pointer dereference")._edges[_to] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>)) == null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L138"
                    _errorf(("missing definition for %s" : stdgo.GoString), stdgo.Go.toInterface(_to));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L144"
        for (__2 => _k in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L145"
            for (__3 => _i in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L146"
                for (__4 => _j in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L147"
                    if ((((_i != (_k) && _k != (_j) : Bool) && _g.hasEdge(_i?.__copy__(), _k?.__copy__()) : Bool) && _g.hasEdge(_k?.__copy__(), _j?.__copy__()) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L148"
                        if (_i == (_j)) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L152"
                            _errorf(("graph cycle: %s < %s < %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_i));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L154"
                        _g.addEdge(_i?.__copy__(), _j?.__copy__());
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L161"
        for (__3 => _bad in _disallowed) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L162"
            for (__4 => _less in _bad._less) {
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L163"
                for (__5 => _def in _bad._def) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L164"
                    if (_g.hasEdge(_def?.__copy__(), _less?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L165"
                        _errorf(("graph edge assertion failed: %s !< %s" : stdgo.GoString), stdgo.Go.toInterface(_less), stdgo.Go.toInterface(_def));
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L171"
        if (((_errors.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L172"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_errors, ("\n" : stdgo.GoString)))) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L175"
        return { _0 : _g, _1 : (null : stdgo.Error) };
    }
