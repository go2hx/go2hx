package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2dialCall_asInterface) class T_http2dialCall_static_extension {
    @:keep
    static public function _dial( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> = _c;
        {};
        {
            var __tmp__ = _c._p._t._dialClientConn(_ctx, _addr?.__copy__(), false);
            _c._res = __tmp__._0;
            _c._err = __tmp__._1;
        };
        _c._p._mu.lock();
        if (_c._p._dialing != null) _c._p._dialing.remove(_addr);
        if (_c._err == null) {
            _c._p._addConnLocked(_addr?.__copy__(), _c._res);
        };
        _c._p._mu.unlock();
        if (_c._done != null) _c._done.__close__();
    }
}
