package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_cancelTimerBody_asInterface) class T_cancelTimerBody_static_extension {
    @:keep
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody> = _b;
        var _err = (_b._rc.close() : stdgo.Error);
        _b._stop();
        return _err;
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _b._rc.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err == null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (_b._reqDidTimeout()) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : (_err.error() + (" (Client.Timeout or context cancellation while reading body)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _timeout : true } : stdgo._internal.net.http.Http_T_httpError.T_httpError)) : stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>));
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
