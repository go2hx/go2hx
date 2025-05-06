package stdgo._internal.go.types;
function _lookupFieldOrMethodImpl(t:stdgo._internal.go.types.Types_type_.Type_, _addressable:Bool, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } {
        var _obj = (null : stdgo._internal.go.types.Types_object.Object), _index = (null : stdgo.Slice<stdgo.GoInt>), _indirect = false;
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L107"
        if (_name == (("_" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L108"
            return { _0 : _obj, _1 : _index, _2 : _indirect };
        };
        var __tmp__ = stdgo._internal.go.types.Types__deref._deref(t), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L117"
        if (_isPtr) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L118"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L119"
                    return { _0 : _obj, _1 : _index, _2 : _indirect };
                };
            };
        };
        var _current = (new stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>(1, 1, ...[(new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, (null : stdgo.Slice<stdgo.GoInt>), _isPtr, false) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)])) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
        var _seen:stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup = ({} : stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup);
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L134"
        while (((_current.length) > (0 : stdgo.GoInt) : Bool)) {
            var _next:stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L138"
            for (__0 => _e in _current) {
                var _typ = (_e._typ : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L143"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                    }, _named = __tmp__._0, __1 = __tmp__._1;
                    if (({
                        final value = _named;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L144"
                        {
                            var _alt = _seen._lookup(_named);
                            if (({
                                final value = _alt;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L150"
                                continue;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L152"
                        _seen._add(_named);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L155"
                        {
                            var __tmp__ = _named._lookupMethod(_pkg, _name?.__copy__(), _foldCase), _i:stdgo.GoInt = __tmp__._0, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
                            if (({
                                final value = _m;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _index = stdgo._internal.go.types.Types__concat._concat(_e._index, _i);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L159"
                                if (((_obj != null) || _e._multiples : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L160"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : _index, _2 : false };
                                        _obj = __tmp__._0;
                                        _index = __tmp__._1;
                                        _indirect = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _obj = stdgo.Go.asInterface(_m);
                                _indirect = _e._indirect;
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L164"
                                continue;
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L168"
                {
                    final __type__ = stdgo._internal.go.types.Types__under._under(_typ);
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L171"
                        for (_i => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L172"
                            if (_f._sameId(_pkg, _name?.__copy__())) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L173"
                                stdgo._internal.go.types.Types__assert._assert((@:checkr _f ?? throw "null pointer dereference")._object._typ != null);
                                _index = stdgo._internal.go.types.Types__concat._concat(_e._index, _i);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L175"
                                if (((_obj != null) || _e._multiples : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L176"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : _index, _2 : false };
                                        _obj = __tmp__._0;
                                        _index = __tmp__._1;
                                        _indirect = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _obj = stdgo.Go.asInterface(_f);
                                _indirect = _e._indirect;
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L180"
                                continue;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L191"
                            if (((_obj == null) && (@:checkr _f ?? throw "null pointer dereference")._embedded : Bool)) {
                                var __tmp__ = stdgo._internal.go.types.Types__deref._deref((@:checkr _f ?? throw "null pointer dereference")._object._typ), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
                                _next = (_next.__append__((new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, stdgo._internal.go.types.Types__concat._concat(_e._index, _i), (_e._indirect || _isPtr : Bool), _e._multiples) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L202"
                        {
                            var __tmp__ = _t._typeSet().lookupMethod(_pkg, _name?.__copy__(), _foldCase), _i:stdgo.GoInt = __tmp__._0, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
                            if (({
                                final value = _m;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L203"
                                stdgo._internal.go.types.Types__assert._assert((@:checkr _m ?? throw "null pointer dereference")._object._typ != null);
                                _index = stdgo._internal.go.types.Types__concat._concat(_e._index, _i);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L205"
                                if (((_obj != null) || _e._multiples : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L206"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : _index, _2 : false };
                                        _obj = __tmp__._0;
                                        _index = __tmp__._1;
                                        _indirect = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _obj = stdgo.Go.asInterface(_m);
                                _indirect = _e._indirect;
                            };
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L214"
            if (_obj != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L220"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : false };
                    }, _f = __tmp__._0, __1 = __tmp__._1;
                    if (({
                        final value = _f;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L222"
                        if (((_f._hasPtrRecv() && !_indirect : Bool) && !_addressable : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L223"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : (null : stdgo.Slice<stdgo.GoInt>), _2 : true };
                                _obj = __tmp__._0;
                                _index = __tmp__._1;
                                _indirect = __tmp__._2;
                                __tmp__;
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L226"
                return { _0 : _obj, _1 : _index, _2 : _indirect };
            };
            _current = stdgo._internal.go.types.Types__consolidatemultiples._consolidateMultiples(_next);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L232"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : (null : stdgo.Slice<stdgo.GoInt>), _2 : false };
            _obj = __tmp__._0;
            _index = __tmp__._1;
            _indirect = __tmp__._2;
            __tmp__;
        };
    }
