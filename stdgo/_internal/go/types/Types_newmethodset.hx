package stdgo._internal.go.types;
function newMethodSet(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L83"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, _t = __tmp__._0, __0 = __tmp__._1;
            if ((({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && stdgo._internal.go.types.Types__ispointer._isPointer(stdgo.Go.asInterface(_t)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L84"
                return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptymethodset._emptyMethodSet) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
            };
        };
        var _base:stdgo._internal.go.types.Types_t_methodset.T_methodSet = (null : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
        var __tmp__ = stdgo._internal.go.types.Types__deref._deref(t), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L93"
        if ((_isPtr && stdgo._internal.go.types.Types_isinterface.isInterface(_typ) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L94"
            return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptymethodset._emptyMethodSet) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        };
        var _current = (new stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>(1, 1, ...[(new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, (null : stdgo.Slice<stdgo.GoInt>), _isPtr, false) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)])) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
        var _seen:stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup = ({} : stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup);
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L108"
        while (((_current.length) > (0 : stdgo.GoInt) : Bool)) {
            var _next:stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
            var _fset:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
            var _mset:stdgo._internal.go.types.Types_t_methodset.T_methodSet = (null : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L115"
            for (__1 => _e in _current) {
                var _typ = (_e._typ : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L120"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                    }, _named = __tmp__._0, __2 = __tmp__._1;
                    if (({
                        final value = _named;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L121"
                        {
                            var _alt = _seen._lookup(_named);
                            if (({
                                final value = _alt;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L127"
                                continue;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L129"
                        _seen._add(_named);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L131"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _named.numMethods() : Bool)) {
                                _mset = _mset._addOne(_named.method(_i), stdgo._internal.go.types.Types__concat._concat(_e._index, _i), _e._indirect, _e._multiples);
                                _i++;
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L136"
                {
                    final __type__ = stdgo._internal.go.types.Types__under._under(_typ);
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L138"
                        for (_i => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L139"
                            if (_fset == null) {
                                _fset = (({
                                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                                    x.__defaultValue__ = () -> false;
                                    {};
                                    x;
                                } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                            };
                            _fset[_f.id()] = true;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L148"
                            if ((@:checkr _f ?? throw "null pointer dereference")._embedded) {
                                var __tmp__ = stdgo._internal.go.types.Types__deref._deref((@:checkr _f ?? throw "null pointer dereference")._object._typ), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
                                _next = (_next.__append__((new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, stdgo._internal.go.types.Types__concat._concat(_e._index, _i), (_e._indirect || _isPtr : Bool), _e._multiples) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                        _mset = _mset._add(_t._typeSet()._methods, _e._index, true, _e._multiples);
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L164"
            for (_k => _m in _mset) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L165"
                {
                    var __tmp__ = (_base != null && _base.__exists__(_k?.__copy__()) ? { _0 : _base[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>), _1 : false }), __2:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (!_found) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L167"
                        if ((_fset[_k] ?? false)) {
                            _m = null;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L170"
                        if (_base == null) {
                            _base = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
                                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>) : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
                        };
                        _base[_k] = _m;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L179"
            for (_k => _ in _fset) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L180"
                {
                    var __tmp__ = (_base != null && _base.__exists__(_k?.__copy__()) ? { _0 : _base[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>), _1 : false }), __2:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (!_found) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L181"
                        if (_base == null) {
                            _base = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
                                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>) : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
                        };
                        _base[_k] = null;
                    };
                };
            };
            _current = stdgo._internal.go.types.Types__consolidatemultiples._consolidateMultiples(_next);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L191"
        if ((_base.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L192"
            return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptymethodset._emptyMethodSet) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        };
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L197"
        for (__1 => _m in _base) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L198"
            if (({
                final value = _m;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _m ?? throw "null pointer dereference")._recv = t;
                _list = (_list.__append__(_m) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L204"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L205"
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._obj.id() < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._obj.id() : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L207"
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_methodset.MethodSet(_list) : stdgo._internal.go.types.Types_methodset.MethodSet)) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
    }
