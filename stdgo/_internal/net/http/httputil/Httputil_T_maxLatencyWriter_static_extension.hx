package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_maxLatencyWriter_asInterface) class T_maxLatencyWriter_static_extension {
    @:keep
    static public function _stop( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            _m._flushPending = false;
            if ((_m._t != null && ((_m._t : Dynamic).__nil__ == null || !(_m._t : Dynamic).__nil__))) {
                _m._t.stop();
            };
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
    @:keep
    static public function _delayedFlush( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            if (!_m._flushPending) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _m._flush();
            _m._flushPending = false;
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
    @:keep
    static public function write( _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            {
                var __tmp__ = _m._dst.write(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if ((_m._latency < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _m._flush();
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_m._flushPending) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_m._t == null || (_m._t : Dynamic).__nil__)) {
                _m._t = stdgo._internal.time.Time_afterFunc.afterFunc(_m._latency, _m._delayedFlush);
            } else {
                _m._t.reset(_m._latency);
            };
            _m._flushPending = true;
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
