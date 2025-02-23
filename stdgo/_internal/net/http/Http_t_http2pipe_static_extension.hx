package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2pipe_asInterface) class T_http2pipe_static_extension {
    @:keep
    @:tdfield
    static public function done( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._donec == null) {
                (@:checkr _p ?? throw "null pointer dereference")._donec = (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
                if ((((@:checkr _p ?? throw "null pointer dereference")._err != null) || ((@:checkr _p ?? throw "null pointer dereference")._breakErr != null) : Bool)) {
                    @:check2r _p._closeDoneLocked();
                };
            };
            {
                final __ret__:stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> = (@:checkr _p ?? throw "null pointer dereference")._donec;
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
                return (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
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
                return (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function err( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._breakErr != null) {
                {
                    final __ret__:stdgo.Error = (@:checkr _p ?? throw "null pointer dereference")._breakErr;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (@:checkr _p ?? throw "null pointer dereference")._err;
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
    static public function breakWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        @:check2r _p._closeWithError((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._breakErr) : stdgo.Ref<stdgo.Error>), _err, null);
    }
    @:keep
    @:tdfield
    static public function closeWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        @:check2r _p._closeWithError((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._err) : stdgo.Ref<stdgo.Error>), _err, null);
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._c.l == null) {
                (@:checkr _p ?? throw "null pointer dereference")._c.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._mu) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>));
            };
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._c.signal;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((((@:checkr _p ?? throw "null pointer dereference")._err != null) || ((@:checkr _p ?? throw "null pointer dereference")._breakErr != null) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__http2errclosedpipewrite._http2errClosedPipeWrite };
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
                    final __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._b.write(_d);
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
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._c.l == null) {
                (@:checkr _p ?? throw "null pointer dereference")._c.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._mu) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>));
            };
            while (true) {
                if ((@:checkr _p ?? throw "null pointer dereference")._breakErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _p ?? throw "null pointer dereference")._breakErr };
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
                if ((((@:checkr _p ?? throw "null pointer dereference")._b != null) && ((@:checkr _p ?? throw "null pointer dereference")._b.len() > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            final __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._b.read(_d);
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
                };
                if ((@:checkr _p ?? throw "null pointer dereference")._err != null) {
                    if ((@:checkr _p ?? throw "null pointer dereference")._readFn != null) {
                        (@:checkr _p ?? throw "null pointer dereference")._readFn();
                        (@:checkr _p ?? throw "null pointer dereference")._readFn = null;
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._b = (null : stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer);
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
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
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._c.wait_();
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
    @:keep
    @:tdfield
    static public function len( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._b == null) {
                {
                    final __ret__:stdgo.GoInt = (@:checkr _p ?? throw "null pointer dereference")._unread;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.GoInt = (@:checkr _p ?? throw "null pointer dereference")._b.len();
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
                return (0 : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
            };
        };
    }
}
