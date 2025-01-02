package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2addConnCall_asInterface) class T_http2addConnCall_static_extension {
    @:keep
    @:tdfield
    static public function _run( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _key:stdgo.GoString, _tc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall> = _c;
        var __tmp__ = @:check2r _t.newClientConn(stdgo.Go.asInterface(_tc)), _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _p = (@:checkr _c ?? throw "null pointer dereference")._p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
        if (_err != null) {
            (@:checkr _c ?? throw "null pointer dereference")._err = _err;
        } else {
            (@:checkr _cc ?? throw "null pointer dereference")._getConnCalled = true;
            @:check2r _p._addConnLocked(_key?.__copy__(), _cc);
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._addConnCalls != null) (@:checkr _p ?? throw "null pointer dereference")._addConnCalls.remove(_key);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
        if ((@:checkr _c ?? throw "null pointer dereference")._done != null) (@:checkr _c ?? throw "null pointer dereference")._done.__close__();
    }
}
