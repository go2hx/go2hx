package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_maxLatencyWriter_asInterface) class T_maxLatencyWriter_static_extension {
    @:keep
    @:tdfield
    static public function _stop( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            (@:checkr _m ?? throw "null pointer dereference")._flushPending = false;
            if (((@:checkr _m ?? throw "null pointer dereference")._t != null && (((@:checkr _m ?? throw "null pointer dereference")._t : Dynamic).__nil__ == null || !((@:checkr _m ?? throw "null pointer dereference")._t : Dynamic).__nil__))) {
                @:check2r (@:checkr _m ?? throw "null pointer dereference")._t.stop();
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _delayedFlush( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (!(@:checkr _m ?? throw "null pointer dereference")._flushPending) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return;
                };
            };
            (@:checkr _m ?? throw "null pointer dereference")._flush();
            (@:checkr _m ?? throw "null pointer dereference")._flushPending = false;
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function write( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var __tmp__ = (@:checkr _m ?? throw "null pointer dereference")._dst.write(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((@:checkr _m ?? throw "null pointer dereference")._latency < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                (@:checkr _m ?? throw "null pointer dereference")._flush();
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return { _0 : _n, _1 : _err };
                };
            };
            if ((@:checkr _m ?? throw "null pointer dereference")._flushPending) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return { _0 : _n, _1 : _err };
                };
            };
            if (((@:checkr _m ?? throw "null pointer dereference")._t == null || ((@:checkr _m ?? throw "null pointer dereference")._t : Dynamic).__nil__)) {
                (@:checkr _m ?? throw "null pointer dereference")._t = stdgo._internal.time.Time_afterFunc.afterFunc((@:checkr _m ?? throw "null pointer dereference")._latency, @:check2r _m._delayedFlush);
            } else {
                @:check2r (@:checkr _m ?? throw "null pointer dereference")._t.reset((@:checkr _m ?? throw "null pointer dereference")._latency);
            };
            (@:checkr _m ?? throw "null pointer dereference")._flushPending = true;
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return { _0 : _n, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _n, _1 : _err };
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _n, _1 : _err };
        };
    }
}
