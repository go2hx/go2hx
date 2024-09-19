package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2addConnCall_asInterface) class T_http2addConnCall_static_extension {
    @:keep
    static public function _run( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _key:stdgo.GoString, _tc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall> = _c;
        var __tmp__ = _t.newClientConn(stdgo.Go.asInterface(_tc)), _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _p = _c._p;
        _p._mu.lock();
        if (_err != null) {
            _c._err = _err;
        } else {
            _cc._getConnCalled = true;
            _p._addConnLocked(_key?.__copy__(), _cc);
        };
        if (_p._addConnCalls != null) _p._addConnCalls.remove(_key);
        _p._mu.unlock();
        if (_c._done != null) _c._done.__close__();
    }
}
