package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_bodyEOFSignal_asInterface) class T_bodyEOFSignal_static_extension {
    @:keep
    @:tdfield
    static public function _condfn( _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>, _err:stdgo.Error):stdgo.Error {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = _es;
        if ((@:checkr _es ?? throw "null pointer dereference")._fn == null) {
            return _err;
        };
        _err = (@:checkr _es ?? throw "null pointer dereference")._fn(_err);
        (@:checkr _es ?? throw "null pointer dereference")._fn = null;
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>):stdgo.Error {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = _es;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _es ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _es ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _es ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            (@:checkr _es ?? throw "null pointer dereference")._closed = true;
            if ((((@:checkr _es ?? throw "null pointer dereference")._earlyCloseFn != null) && (stdgo.Go.toInterface((@:checkr _es ?? throw "null pointer dereference")._rerr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
                {
                    final __ret__:stdgo.Error = (@:checkr _es ?? throw "null pointer dereference")._earlyCloseFn();
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            var _err = ((@:checkr _es ?? throw "null pointer dereference")._body.close() : stdgo.Error);
            {
                final __ret__:stdgo.Error = @:check2r _es._condfn(_err);
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function read( _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = _es;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _es ?? throw "null pointer dereference")._mu.lock();
            var __0 = ((@:checkr _es ?? throw "null pointer dereference")._closed : Bool), __1 = ((@:checkr _es ?? throw "null pointer dereference")._rerr : stdgo.Error);
var _rerr = __1, _closed = __0;
            @:check2 (@:checkr _es ?? throw "null pointer dereference")._mu.unlock();
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
                var __tmp__ = (@:checkr _es ?? throw "null pointer dereference")._body.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                @:check2 (@:checkr _es ?? throw "null pointer dereference")._mu.lock();
                {
                    final __f__ = @:check2 (@:checkr _es ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                if ((@:checkr _es ?? throw "null pointer dereference")._rerr == null) {
                    (@:checkr _es ?? throw "null pointer dereference")._rerr = _err;
                };
                _err = @:check2r _es._condfn(_err);
            };
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
