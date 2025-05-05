package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_mapEncoder_asInterface) class T_mapEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _me:stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _me:stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder = _me?.__copy__();
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L725"
            if (_v.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L726"
                _e.writeString(("null" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L727"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L729"
            {
                (@:checkr _e ?? throw "null pointer dereference")._ptrLevel++;
                if (((@:checkr _e ?? throw "null pointer dereference")._ptrLevel > (1000u32 : stdgo.GoUInt) : Bool)) {
                    var _ptr = (_v.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L733"
                    {
                        var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._ptrSeen != null && (@:checkr _e ?? throw "null pointer dereference")._ptrSeen.__exists__(stdgo.Go.toInterface(_ptr)) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._ptrSeen[stdgo.Go.toInterface(_ptr)], _1 : true } : { _0 : ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue), _1 : false }), __4:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L734"
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError(_v?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>)));
                        };
                    };
                    (@:checkr _e ?? throw "null pointer dereference")._ptrSeen[stdgo.Go.toInterface(_ptr)] = (new stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue() : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
                    {
                        var _a0 = (@:checkr _e ?? throw "null pointer dereference")._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__remove__(stdgo.Go.toInterface(_a1)) });
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L739"
            _e.writeByte((123 : stdgo.GoUInt8));
            var _sv = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString>((_v.len() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_v.len() : stdgo.GoInt).toBasic() > 0 ? (_v.len() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString)]) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString>);
            var _mi = _v.mapRange();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L744"
            {
                var _i = (0 : stdgo.GoInt);
                while (_mi.next()) {
                    _sv[(_i : stdgo.GoInt)]._k = _mi.key().__copy__();
_sv[(_i : stdgo.GoInt)]._v = _mi.value().__copy__();
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L747"
                    {
                        var _err = (_sv[(_i : stdgo.GoInt)]._resolve() : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L748"
                            _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: encoding error for type %q: %q" : stdgo.GoString), stdgo.Go.toInterface((_v.type().string() : stdgo.GoString)), stdgo.Go.toInterface(_err.error())));
                        };
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L751"
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_sv), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L751"
                return (_sv[(_i : stdgo.GoInt)]._ks < _sv[(_j : stdgo.GoInt)]._ks : Bool);
            });
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L753"
            for (_i => _kv in _sv) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L754"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L755"
                    _e.writeByte((44 : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L757"
                _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), _kv._ks?.__copy__(), _opts._escapeHTML));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L758"
                _e.writeByte((58 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L759"
                _me._elemEnc(_e, _kv._v?.__copy__(), _opts?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L761"
            _e.writeByte((125 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L762"
            (@:checkr _e ?? throw "null pointer dereference")._ptrLevel--;
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
