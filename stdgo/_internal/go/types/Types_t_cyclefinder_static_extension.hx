package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_cycleFinder_asInterface) class T_cycleFinder_static_extension {
    @:keep
    @:tdfield
    static public function _varList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L754"
        for (__0 => _v in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L755"
            _w._typ((@:checkr _v ?? throw "null pointer dereference")._object._typ);
        };
    }
    @:keep
    @:tdfield
    static public function _typ( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L673"
            if (((@:checkr _w ?? throw "null pointer dereference")._seen[_typ] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L677"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                    }, _tpar = __tmp__._0, __0 = __tmp__._1;
                    if (({
                        final value = _tpar;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L678"
                        {
                            var _i = (stdgo._internal.go.types.Types__tparamindex._tparamIndex((@:checkr _w ?? throw "null pointer dereference")._tparams, _tpar) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                (@:checkr _w ?? throw "null pointer dereference")._inferred[(_i : stdgo.GoInt)] = (null : stdgo._internal.go.types.Types_type_.Type_);
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L685"
                return;
            };
            (@:checkr _w ?? throw "null pointer dereference")._seen[_typ] = true;
            {
                var _a0 = (@:checkr _w ?? throw "null pointer dereference")._seen;
                var _a1 = _typ;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__remove__(_a1) });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L690"
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L695"
                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L698"
                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L701"
                    _w._varList((@:checkr _t ?? throw "null pointer dereference")._fields);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L704"
                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._base);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L711"
                    if (({
                        final value = (@:checkr _t ?? throw "null pointer dereference")._params;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L712"
                        _w._varList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._params ?? throw "null pointer dereference")._vars);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L714"
                    if (({
                        final value = (@:checkr _t ?? throw "null pointer dereference")._results;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L715"
                        _w._varList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L719"
                    for (__0 => _t in (@:checkr _t ?? throw "null pointer dereference")._terms) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L720"
                        _w._typ((@:checkr _t ?? throw "null pointer dereference")._typ);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L724"
                    for (__8 => _m in (@:checkr _t ?? throw "null pointer dereference")._methods) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L725"
                        _w._typ((@:checkr _m ?? throw "null pointer dereference")._object._typ);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L727"
                    for (__17 => _t in (@:checkr _t ?? throw "null pointer dereference")._embeddeds) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L728"
                        _w._typ(_t);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L732"
                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._key);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L733"
                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L736"
                    _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L739"
                    for (__8 => _tpar in _t.typeArgs()._list()) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L740"
                        _w._typ(_tpar);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L744"
                    {
                        var _i = (stdgo._internal.go.types.Types__tparamindex._tparamIndex((@:checkr _w ?? throw "null pointer dereference")._tparams, _t) : stdgo.GoInt);
                        if (((_i >= (0 : stdgo.GoInt) : Bool) && ((@:checkr _w ?? throw "null pointer dereference")._inferred[(_i : stdgo.GoInt)] != null) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L745"
                            _w._typ((@:checkr _w ?? throw "null pointer dereference")._inferred[(_i : stdgo.GoInt)]);
                        };
                    };
                } else {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L749"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected %T" : stdgo.GoString), stdgo.Go.toInterface(_typ)));
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
}
