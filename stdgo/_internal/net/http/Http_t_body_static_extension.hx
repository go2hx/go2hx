package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_body_asInterface) class T_body_static_extension {
    @:keep
    @:tdfield
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _b ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _b ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _b ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            if ((@:checkr _b ?? throw "null pointer dereference")._sawEOF) {} else if ((((@:checkr _b ?? throw "null pointer dereference")._hdr == null) && (@:checkr _b ?? throw "null pointer dereference")._closing : Bool)) {} else if ((@:checkr _b ?? throw "null pointer dereference")._doEarlyClose) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._src) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                    }, _lr = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && ((@:checkr _lr ?? throw "null pointer dereference").n > (262144i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        (@:checkr _b ?? throw "null pointer dereference")._earlyClose = true;
                    } else {
                        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                        {
                            var __tmp__ = stdgo._internal.net.http.Http__io._io.copyN(stdgo._internal.net.http.Http__io._io.discard, stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked(_b) : stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked)), (262144i64 : stdgo.GoInt64));
                            _n = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
                            _err = (null : stdgo.Error);
                        };
                        if (_n == ((262144i64 : stdgo.GoInt64))) {
                            (@:checkr _b ?? throw "null pointer dereference")._earlyClose = true;
                        };
                    };
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__io._io.copy(stdgo._internal.net.http.Http__io._io.discard, stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked(_b) : stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked)));
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            (@:checkr _b ?? throw "null pointer dereference")._closed = true;
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
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _b ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _b ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _b ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    final __tmp__ = @:check2r _b._readLocked(_p);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _n, _1 : _err };
                };
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
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
