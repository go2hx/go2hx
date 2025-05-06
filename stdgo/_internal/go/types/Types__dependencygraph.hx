package stdgo._internal.go.types;
function _dependencyGraph(_objMap:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>> {
        var m = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_t_dependency.T_dependency, stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_t_dependency.T_dependency", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_t_dependency.T_dependency", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_t_dependency.T_dependency, stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>) : stdgo.GoMap<stdgo._internal.go.types.Types_t_dependency.T_dependency, stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L217"
        for (_obj => _ in _objMap) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L219"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo._internal.go.types.Types_t_dependency.T_dependency)) : stdgo._internal.go.types.Types_t_dependency.T_dependency), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.go.types.Types_t_dependency.T_dependency), _1 : false };
                }, _obj = __tmp__._0, __0 = __tmp__._1;
                if (_obj != null) {
                    m[_obj] = (stdgo.Go.setRef(({ _obj : _obj } : stdgo._internal.go.types.Types_t_graphnode.T_graphNode)) : stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L227"
        for (_obj => _n in m) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L229"
            for (_d => _ in (@:checkr (_objMap[_obj] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>)) ?? throw "null pointer dereference")._deps) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L231"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo._internal.go.types.Types_t_dependency.T_dependency)) : stdgo._internal.go.types.Types_t_dependency.T_dependency), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.go.types.Types_t_dependency.T_dependency), _1 : false };
                    }, _d = __tmp__._0, __0 = __tmp__._1;
                    if (_d != null) {
                        var _d = (m[_d] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>));
                        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L233"
                        (@:checkr _n ?? throw "null pointer dereference")._succ._add(_d);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L234"
                        (@:checkr _d ?? throw "null pointer dereference")._pred._add(_n);
                    };
                };
            };
        };
        var g:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>), _funcG:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L240"
        for (__0 => _n in m) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L241"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference")._obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _funcG = (_funcG.__append__(_n) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>);
                } else {
                    g = (g.__append__(_n) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_graphnode.T_graphNode>>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L258"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_funcG), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L259"
            return (_funcG[(_i : stdgo.GoInt)]._cost() < _funcG[(_j : stdgo.GoInt)]._cost() : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L261"
        for (__1 => _n in _funcG) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L264"
            for (_p => _ in (@:checkr _n ?? throw "null pointer dereference")._pred) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L266"
                if (_p != (_n)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L269"
                    for (_s => _ in (@:checkr _n ?? throw "null pointer dereference")._succ) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L271"
                        if (_s != (_n)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L272"
                            (@:checkr _p ?? throw "null pointer dereference")._succ._add(_s);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L273"
                            (@:checkr _s ?? throw "null pointer dereference")._pred._add(_p);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L276"
                    if ((@:checkr _p ?? throw "null pointer dereference")._succ != null) (@:checkr _p ?? throw "null pointer dereference")._succ.__remove__(_n);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L279"
            for (_s => _ in (@:checkr _n ?? throw "null pointer dereference")._succ) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L280"
                if ((@:checkr _s ?? throw "null pointer dereference")._pred != null) (@:checkr _s ?? throw "null pointer dereference")._pred.__remove__(_n);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L285"
        for (_i => _n in g) {
            (@:checkr _n ?? throw "null pointer dereference")._index = _i;
            (@:checkr _n ?? throw "null pointer dereference")._ndeps = ((@:checkr _n ?? throw "null pointer dereference")._succ.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L290"
        return g;
    }
