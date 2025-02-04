package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_maxLatencyWriter_asInterface) class T_maxLatencyWriter_static_extension {
    @:keep
    @:tdfield
    static public function _stop( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _m ?? throw "null pointer dereference")._flushPending = false;
            if (((@:checkr _m ?? throw "null pointer dereference")._t != null && (((@:checkr _m ?? throw "null pointer dereference")._t : Dynamic).__nil__ == null || !((@:checkr _m ?? throw "null pointer dereference")._t : Dynamic).__nil__))) {
                @:check2r (@:checkr _m ?? throw "null pointer dereference")._t.stop();
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
    static public function _delayedFlush( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (!(@:checkr _m ?? throw "null pointer dereference")._flushPending) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _m ?? throw "null pointer dereference")._flush();
            (@:checkr _m ?? throw "null pointer dereference")._flushPending = false;
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
    static public function write( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = (@:checkr _m ?? throw "null pointer dereference")._dst.write(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (((@:checkr _m ?? throw "null pointer dereference")._latency < (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                (@:checkr _m ?? throw "null pointer dereference")._flush();
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _n, _1 : _err };
                };
            };
            if ((@:checkr _m ?? throw "null pointer dereference")._flushPending) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _n, _1 : _err };
                };
            };
            if (((@:checkr _m ?? throw "null pointer dereference")._t == null || ((@:checkr _m ?? throw "null pointer dereference")._t : Dynamic).__nil__)) {
                (@:checkr _m ?? throw "null pointer dereference")._t = stdgo._internal.time.Time_afterfunc.afterFunc((@:checkr _m ?? throw "null pointer dereference")._latency, @:check2r _m._delayedFlush);
            } else {
                @:check2r (@:checkr _m ?? throw "null pointer dereference")._t.reset((@:checkr _m ?? throw "null pointer dereference")._latency);
            };
            (@:checkr _m ?? throw "null pointer dereference")._flushPending = true;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _n, _1 : _err };
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
