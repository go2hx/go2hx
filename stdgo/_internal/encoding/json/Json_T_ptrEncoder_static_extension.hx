package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_ptrEncoder_asInterface) class T_ptrEncoder_static_extension {
    @:keep
    static public function _encode( _pe:stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _pe:stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder = _pe?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_v.isNil()) {
                _e.writeString(("null" : stdgo.GoString));
                return;
            };
            {
                _e._ptrLevel++;
                if ((_e._ptrLevel > (1000u32 : stdgo.GoUInt) : Bool)) {
                    var _ptr = (_v.interface_() : stdgo.AnyInterface);
                    {
                        var __tmp__ = (_e._ptrSeen != null && _e._ptrSeen.exists(_ptr) ? { _0 : _e._ptrSeen[_ptr], _1 : true } : { _0 : ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue), _1 : false }), __8:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError(_v?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>)));
                        };
                    };
                    _e._ptrSeen[_ptr] = (new stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue() : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
                    {
                        var _a0 = _e._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift(() -> if (_a0 != null) _a0.remove(_a1));
                    };
                };
            };
            _pe._elemEnc(_e, _v.elem()?.__copy__(), _opts?.__copy__());
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