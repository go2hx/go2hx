package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    static public function setEscapeHTML( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>, _on:Bool):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder> = _enc;
        _enc._escapeHTML = _on;
    }
    @:keep
    static public function setIndent( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder> = _enc;
        _enc._indentPrefix = _prefix?.__copy__();
        _enc._indentValue = _indent?.__copy__();
    }
    @:keep
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_enc._err != null) {
                return _enc._err;
            };
            var _e = stdgo._internal.encoding.json.Json__newEncodeState._newEncodeState();
            {
                var _a0 = _e;
                __deferstack__.unshift(() -> stdgo._internal.encoding.json.Json__encodeStatePool._encodeStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_a0))));
            };
            var _err = (_e._marshal(_v, ({ _escapeHTML : _enc._escapeHTML } : stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts)) : stdgo.Error);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _e.writeByte((10 : stdgo.GoUInt8));
            var _b = _e.bytes();
            if (((_enc._indentPrefix != stdgo.Go.str()) || (_enc._indentValue != stdgo.Go.str()) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json__appendIndent._appendIndent((_enc._indentBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _b, _enc._indentPrefix?.__copy__(), _enc._indentValue?.__copy__());
                    _enc._indentBuf = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
                _b = _enc._indentBuf;
            };
            {
                {
                    var __tmp__ = _enc._w.write(_b);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _enc._err = _err;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
