package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.StdSizes_asInterface) class StdSizes_static_extension {
    @:keep
    @:tdfield
    static public function sizeof( _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L167"
        {
            final __type__ = stdgo._internal.go.types.Types__under._under(t);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L169"
                stdgo._internal.go.types.Types__assert._assert(stdgo._internal.go.types.Types__istyped._isTyped(t));
                var _k = ((@:checkr _t ?? throw "null pointer dereference")._kind : stdgo._internal.go.types.Types_basickind.BasicKind);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L171"
                if (((_k : stdgo.GoInt) < (stdgo._internal.go.types.Types__basicsizes._basicSizes.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L172"
                    {
                        var _s = (stdgo._internal.go.types.Types__basicsizes._basicSizes[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
                        if ((_s > (0 : stdgo.GoUInt8) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L173"
                            return (_s : stdgo.GoInt64);
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L176"
                if (_k == ((17 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L177"
                    return ((@:checkr _s ?? throw "null pointer dereference").wordSize * (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                var _n = ((@:checkr _t ?? throw "null pointer dereference")._len : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L181"
                if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L182"
                    return (0i64 : stdgo.GoInt64);
                };
                var _esize = (_s.sizeof((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L186"
                if ((_esize < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L187"
                    return (-1i64 : stdgo.GoInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L189"
                if (_esize == ((0i64 : stdgo.GoInt64))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L190"
                    return (0i64 : stdgo.GoInt64);
                };
                var _a = (_s.alignof_((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo.GoInt64);
                var _ea = (stdgo._internal.go.types.Types__align._align(_esize, _a) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L195"
                if ((_ea < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L196"
                    return (-1i64 : stdgo.GoInt64);
                };
                var _n1 = (_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                {};
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L202"
                if (((_n1 > (0i64 : stdgo.GoInt64) : Bool) && (_ea > ((9223372036854775807i64 : stdgo.GoInt64) / _n1 : stdgo.GoInt64) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L203"
                    return (-1i64 : stdgo.GoInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L205"
                return ((_ea * _n1 : stdgo.GoInt64) + _esize : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L207"
                return ((@:checkr _s ?? throw "null pointer dereference").wordSize * (3i64 : stdgo.GoInt64) : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                var _n = (_t.numFields() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L210"
                if (_n == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L211"
                    return (0i64 : stdgo.GoInt64);
                };
                var _offsets = _s.offsetsof((@:checkr _t ?? throw "null pointer dereference")._fields);
                var _offs = (_offsets[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt64);
                var _size = (_s.sizeof((@:checkr (@:checkr _t ?? throw "null pointer dereference")._fields[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L216"
                if (((_offs < (0i64 : stdgo.GoInt64) : Bool) || (_size < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L217"
                    return (-1i64 : stdgo.GoInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L219"
                return (_offs + _size : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L223"
                stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(t));
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L224"
                return ((@:checkr _s ?? throw "null pointer dereference").wordSize * (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L226"
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L228"
        return (@:checkr _s ?? throw "null pointer dereference").wordSize;
    }
    @:keep
    @:tdfield
    static public function offsetsof( _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>, _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo.GoInt64> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = _s;
        var _offsets = (new stdgo.Slice<stdgo.GoInt64>((_fields.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _offs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L131"
        for (_i => _f in _fields) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L132"
            if ((_offs < (0i64 : stdgo.GoInt64) : Bool)) {
                _offsets[(_i : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L135"
                continue;
            };
            var _a = (_s.alignof_((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
            _offs = stdgo._internal.go.types.Types__align._align(_offs, _a);
            _offsets[(_i : stdgo.GoInt)] = _offs;
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L141"
            {
                var _d = (_s.sizeof((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
                if (((_d >= (0i64 : stdgo.GoInt64) : Bool) && (_offs >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    _offs = (_offs + (_d) : stdgo.GoInt64);
                } else {
                    _offs = (-1i64 : stdgo.GoInt64);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L147"
        return _offsets;
    }
    @:keep
    @:tdfield
    static public function alignof_( _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _result = (0 : stdgo.GoInt64);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L54"
                        stdgo._internal.go.types.Types__assert._assert((_result >= (1i64 : stdgo.GoInt64) : Bool));
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L59"
            {
                final __type__ = stdgo._internal.go.types.Types__under._under(t);
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L63"
                    {
                        final __ret__:stdgo.GoInt64 = _result = _s.alignof_((@:checkr _t ?? throw "null pointer dereference")._elem);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L65"
                    if ((((@:checkr _t ?? throw "null pointer dereference")._fields.length == (0 : stdgo.GoInt)) && stdgo._internal.go.types.Types___issyncatomicalign64.__IsSyncAtomicAlign64(t) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L73"
                        {
                            final __ret__:stdgo.GoInt64 = _result = (8i64 : stdgo.GoInt64);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _max = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L80"
                    for (__0 => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L81"
                        {
                            var _a = (_s.alignof_((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
                            if ((_a > _max : Bool)) {
                                _max = _a;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L85"
                    {
                        final __ret__:stdgo.GoInt64 = _result = _max;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L91"
                    stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(t));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L92"
                    {
                        final __ret__:stdgo.GoInt64 = _result = (@:checkr _s ?? throw "null pointer dereference").wordSize;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L95"
                    if ((_t.info() & (32 : stdgo._internal.go.types.Types_basicinfo.BasicInfo) : stdgo._internal.go.types.Types_basicinfo.BasicInfo) != ((0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L96"
                        {
                            final __ret__:stdgo.GoInt64 = _result = (@:checkr _s ?? throw "null pointer dereference").wordSize;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L99"
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
            var _a = (_s.sizeof(t) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L103"
            if ((_a < (1i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L104"
                {
                    final __ret__:stdgo.GoInt64 = _result = (1i64 : stdgo.GoInt64);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L107"
            if (stdgo._internal.go.types.Types__iscomplex._isComplex(t)) {
                _a = (_a / ((2i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L110"
            if ((_a > (@:checkr _s ?? throw "null pointer dereference").maxAlign : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L111"
                {
                    final __ret__:stdgo.GoInt64 = _result = (@:checkr _s ?? throw "null pointer dereference").maxAlign;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L113"
            {
                final __ret__:stdgo.GoInt64 = _result = _a;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return _result;
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
                return _result;
            };
        };
    }
}
