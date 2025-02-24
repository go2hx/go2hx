package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_timeoutWriter_asInterface) class T_timeoutWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeHeader( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _code:stdgo.GoInt):Void {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _tw._writeHeaderLocked(_code);
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _tw ?? throw "null pointer dereference")._err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (!(@:checkr _tw ?? throw "null pointer dereference")._wroteHeader) {
                @:check2r _tw._writeHeaderLocked((200 : stdgo.GoInt));
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._wbuf.write(_p);
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function header( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        return (@:checkr _tw ?? throw "null pointer dereference")._h;
    }
    @:keep
    @:tdfield
    static public function push( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _tw ?? throw "null pointer dereference")._w) : stdgo._internal.net.http.Http_pusher.Pusher)) : stdgo._internal.net.http.Http_pusher.Pusher), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_pusher.Pusher), _1 : false };
            }, _pusher = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _pusher.push(_target?.__copy__(), _opts);
            };
        };
        return stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotsupported.errNotSupported);
    }
}
