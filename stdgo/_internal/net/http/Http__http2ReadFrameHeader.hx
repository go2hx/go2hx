package stdgo._internal.net.http;
function _http2ReadFrameHeader(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _bufp = (stdgo.Go.typeAssert((@:check2 stdgo._internal.net.http.Http__http2fhBytes._http2fhBytes.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            {
                var _a0 = _bufp;
                final __f__ = @:check2 stdgo._internal.net.http.Http__http2fhBytes._http2fhBytes.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(stdgo.Go.toInterface(_a0)) });
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader; var _1 : stdgo.Error; } = stdgo._internal.net.http.Http__http2readFrameHeader._http2readFrameHeader((_bufp : stdgo.Slice<stdgo.GoUInt8>), _r);
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader), _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader), _1 : (null : stdgo.Error) };
            };
        };
    }
