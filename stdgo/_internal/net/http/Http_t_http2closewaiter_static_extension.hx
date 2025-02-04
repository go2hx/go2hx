package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2closeWaiter_asInterface) class T_http2closeWaiter_static_extension {
    @:keep
    @:tdfield
    static public function wait_( _cw:stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter):Void {
        @:recv var _cw:stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter = _cw;
        _cw.__get__();
    }
    @:keep
    @:tdfield
    static public function close( _cw:stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter):Void {
        @:recv var _cw:stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter = _cw;
        if (_cw != null) _cw.__close__();
    }
    @:keep
    @:tdfield
    static public function init( _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter> = _cw;
        _cw = (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
    }
}
