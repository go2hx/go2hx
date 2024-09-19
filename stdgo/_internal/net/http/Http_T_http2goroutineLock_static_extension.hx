package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2goroutineLock_asInterface) class T_http2goroutineLock_static_extension {
    @:keep
    static public function _checkNotOn( _g:stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock):Void {
        @:recv var _g:stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock = _g;
        if (!stdgo._internal.net.http.Http__http2DebugGoroutines._http2DebugGoroutines) {
            return;
        };
        if (stdgo._internal.net.http.Http__http2curGoroutineID._http2curGoroutineID() == ((_g : stdgo.GoUInt64))) {
            throw stdgo.Go.toInterface(("running on the wrong goroutine" : stdgo.GoString));
        };
    }
    @:keep
    static public function _check( _g:stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock):Void {
        @:recv var _g:stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock = _g;
        if (!stdgo._internal.net.http.Http__http2DebugGoroutines._http2DebugGoroutines) {
            return;
        };
        if (stdgo._internal.net.http.Http__http2curGoroutineID._http2curGoroutineID() != ((_g : stdgo.GoUInt64))) {
            throw stdgo.Go.toInterface(("running on the wrong goroutine" : stdgo.GoString));
        };
    }
}
