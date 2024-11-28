package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_bodyEOFSignal_asInterface) class T_bodyEOFSignal_static_extension {
    @:keep
    static public function _condfn( _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>, _err:stdgo.Error):stdgo.Error {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = _es;
        if (_es._fn == null) {
            return _err;
        };
        _err = _es._fn(_err);
        _es._fn = null;
        return _err;
    }
    @:keep
    static public function close( _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>):stdgo.Error {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = _es;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _es._mu.lock();
            __deferstack__.unshift(() -> _es._mu.unlock());
            if (_es._closed) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _es._closed = true;
            if (((_es._earlyCloseFn != null) && (stdgo.Go.toInterface(_es._rerr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                {
                    final __ret__:stdgo.Error = _es._earlyCloseFn();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _err = (_es._body.close() : stdgo.Error);
            {
                final __ret__:stdgo.Error = _es._condfn(_err);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
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
    @:keep
    static public function read( _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = _es;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _es._mu.lock();
            var __0 = (_es._closed : Bool), __1 = (_es._rerr : stdgo.Error);
var _rerr = __1, _closed = __0;
            _es._mu.unlock();
            if (_closed) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__errReadOnClosedResBody._errReadOnClosedResBody };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_rerr != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _rerr };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = _es._body.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _es._mu.lock();
                __deferstack__.unshift(() -> _es._mu.unlock());
                if (_es._rerr == null) {
                    _es._rerr = _err;
                };
                _err = _es._condfn(_err);
            };
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
