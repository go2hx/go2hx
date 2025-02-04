package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function setEscapeHTML( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, _on:Bool):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw "null pointer dereference")._escapeHTML = _on;
    }
    @:keep
    @:tdfield
    static public function setIndent( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw "null pointer dereference")._indentPrefix = _prefix?.__copy__();
        (@:checkr _enc ?? throw "null pointer dereference")._indentValue = _indent?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _enc ?? throw "null pointer dereference")._err != null) {
                return (@:checkr _enc ?? throw "null pointer dereference")._err;
            };
            var _e = stdgo._internal.encoding.json.Json__newencodestate._newEncodeState();
            {
                var _a0 = _e;
                final __f__ = @:check2 stdgo._internal.encoding.json.Json__encodestatepool._encodeStatePool.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(stdgo.Go.toInterface(stdgo.Go.asInterface(_a0))) });
            };
            var _err = (@:check2r _e._marshal(_v, ({ _escapeHTML : (@:checkr _enc ?? throw "null pointer dereference")._escapeHTML } : stdgo._internal.encoding.json.Json_t_encopts.T_encOpts)) : stdgo.Error);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            @:check2r _e.writeByte((10 : stdgo.GoUInt8));
            var _b = @:check2r _e.bytes();
            if ((((@:checkr _enc ?? throw "null pointer dereference")._indentPrefix != (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _enc ?? throw "null pointer dereference")._indentValue != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json__appendindent._appendIndent(((@:checkr _enc ?? throw "null pointer dereference")._indentBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _b, (@:checkr _enc ?? throw "null pointer dereference")._indentPrefix?.__copy__(), (@:checkr _enc ?? throw "null pointer dereference")._indentValue?.__copy__());
                    (@:checkr _enc ?? throw "null pointer dereference")._indentBuf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                _b = (@:checkr _enc ?? throw "null pointer dereference")._indentBuf;
            };
            {
                {
                    var __tmp__ = (@:checkr _enc ?? throw "null pointer dereference")._w.write(_b);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    (@:checkr _enc ?? throw "null pointer dereference")._err = _err;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return (null : stdgo.Error);
            };
        };
    }
}
