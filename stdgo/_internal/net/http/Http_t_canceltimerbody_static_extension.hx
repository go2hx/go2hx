package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_cancelTimerBody_asInterface) class T_cancelTimerBody_static_extension {
    @:keep
    @:tdfield
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody> = _b;
        var _err = ((@:checkr _b ?? throw "null pointer dereference")._rc.close() : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._stop();
        return _err;
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._rc.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err == null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._reqDidTimeout()) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : (_err.error() + (" (Client.Timeout or context cancellation while reading body)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _timeout : true } : stdgo._internal.net.http.Http_t_httperror.T_httpError)) : stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>));
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
