package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_mapEncoder_asInterface) class T_mapEncoder_static_extension {
    @:keep
    static public function _encode( _me:stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _me:stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder = _me?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_v.isNil()) {
                _e.writeString(("null" : stdgo.GoString));
                return;
            };
            {
                _e._ptrLevel++;
                if ((_e._ptrLevel > (1000u32 : stdgo.GoUInt) : Bool)) {
                    var _ptr = (_v.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                    {
                        var __tmp__ = (_e._ptrSeen != null && _e._ptrSeen.exists(stdgo.Go.toInterface(_ptr)) ? { _0 : _e._ptrSeen[stdgo.Go.toInterface(_ptr)], _1 : true } : { _0 : ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue), _1 : false }), __4:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError(_v?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>)));
                        };
                    };
                    _e._ptrSeen[stdgo.Go.toInterface(_ptr)] = (new stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue() : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
                    {
                        var _a0 = _e._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift(() -> if (_a0 != null) _a0.remove(stdgo.Go.toInterface(_a1)));
                    };
                };
            };
            _e.writeByte((123 : stdgo.GoUInt8));
            var _sv = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString>((_v.len() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_v.len() : stdgo.GoInt).toBasic() > 0 ? (_v.len() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString)]) : stdgo.Slice<stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString>);
            var _mi = _v.mapRange();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_mi.next(), _i++, {
                    _sv[(_i : stdgo.GoInt)]._k = _mi.key()?.__copy__();
                    _sv[(_i : stdgo.GoInt)]._v = _mi.value()?.__copy__();
                    {
                        var _err = (_sv[(_i : stdgo.GoInt)]._resolve() : stdgo.Error);
                        if (_err != null) {
                            _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: encoding error for type %q: %q" : stdgo.GoString), stdgo.Go.toInterface((_v.type().string() : stdgo.GoString)), stdgo.Go.toInterface(_err.error())));
                        };
                    };
                });
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_sv), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        final __ret__:Bool = (_sv[(_i : stdgo.GoInt)]._ks < _sv[(_j : stdgo.GoInt)]._ks : Bool);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return false;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return false;
                };
            });
            for (_i => _kv in _sv) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _e.writeByte((44 : stdgo.GoUInt8));
                };
                _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(_e.availableBuffer(), _kv._ks?.__copy__(), _opts._escapeHTML));
                _e.writeByte((58 : stdgo.GoUInt8));
                _me._elemEnc(_e, _kv._v?.__copy__(), _opts?.__copy__());
            };
            _e.writeByte((125 : stdgo.GoUInt8));
            _e._ptrLevel--;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
}
