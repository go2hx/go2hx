package stdgo._internal.internal.dag;
function parse(_dag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>; var _1 : stdgo.Error; } {
        var _g = stdgo._internal.internal.dag.Dag__newgraph._newGraph();
        var _disallowed = (new stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.dag.Dag_t_rule.T_rule)])) : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>);
        var __tmp__ = stdgo._internal.internal.dag.Dag__parserules._parseRules(_dag?.__copy__()), _rules:stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _errors:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _errorf = function(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {
            var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
            _errors = (_errors.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__()));
        };
        for (__0 => _r in _rules) {
            if (_r._op == (("!<" : stdgo.GoString))) {
                _disallowed = (_disallowed.__append__(_r?.__copy__()));
                continue;
            };
            for (__1 => _def in _r._def) {
                if (_def == (("NONE" : stdgo.GoString))) {
                    _errorf(("NONE cannot be a predecessor" : stdgo.GoString));
                    continue;
                };
                if (!@:check2r _g._addNode(_def?.__copy__())) {
                    _errorf(("multiple definitions for %s" : stdgo.GoString), stdgo.Go.toInterface(_def));
                };
                for (__2 => _less in _r._less) {
                    if (_less == (("NONE" : stdgo.GoString))) {
                        continue;
                    };
                    {
                        var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._byLabel != null && (@:checkr _g ?? throw "null pointer dereference")._byLabel.__exists__(_less?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._byLabel[_less?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __3:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _errorf(("use of %s before its definition" : stdgo.GoString), stdgo.Go.toInterface(_less));
                        } else {
                            @:check2r _g.addEdge(_def?.__copy__(), _less?.__copy__());
                        };
                    };
                };
            };
        };
        for (__1 => _tos in (@:checkr _g ?? throw "null pointer dereference")._edges) {
            for (_to => _ in _tos) {
                if (((@:checkr _g ?? throw "null pointer dereference")._edges[_to] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>)) == null) {
                    _errorf(("missing definition for %s" : stdgo.GoString), stdgo.Go.toInterface(_to));
                };
            };
        };
        for (__2 => _k in (@:checkr _g ?? throw "null pointer dereference").nodes) {
            for (__3 => _i in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                for (__4 => _j in (@:checkr _g ?? throw "null pointer dereference").nodes) {
                    if ((((_i != (_k) && _k != (_j) : Bool) && @:check2r _g.hasEdge(_i?.__copy__(), _k?.__copy__()) : Bool) && @:check2r _g.hasEdge(_k?.__copy__(), _j?.__copy__()) : Bool)) {
                        if (_i == (_j)) {
                            _errorf(("graph cycle: %s < %s < %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_i));
                        };
                        @:check2r _g.addEdge(_i?.__copy__(), _j?.__copy__());
                    };
                };
            };
        };
        for (__3 => _bad in _disallowed) {
            for (__4 => _less in _bad._less) {
                for (__5 => _def in _bad._def) {
                    if (@:check2r _g.hasEdge(_def?.__copy__(), _less?.__copy__())) {
                        _errorf(("graph edge assertion failed: %s !< %s" : stdgo.GoString), stdgo.Go.toInterface(_less), stdgo.Go.toInterface(_def));
                    };
                };
            };
        };
        if (((_errors.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_errors, ("\n" : stdgo.GoString)))) };
        };
        return { _0 : _g, _1 : (null : stdgo.Error) };
    }
