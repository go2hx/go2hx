package stdgo._internal.net.http;
function _http2serverConnBaseContext(_c:stdgo._internal.net.Net_Conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):{ var _0 : stdgo._internal.context.Context_Context.Context; var _1 : () -> Void; } {
        var _ctx = (null : stdgo._internal.context.Context_Context.Context), _cancel = null;
        {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_opts._context());
            _ctx = __tmp__._0;
            _cancel = __tmp__._1;
        };
        _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_localAddrContextKey.localAddrContextKey)), stdgo.Go.toInterface(_c.localAddr()));
        {
            var _hs = _opts._baseConfig();
            if (_hs != null && ((_hs : Dynamic).__nil__ == null || !(_hs : Dynamic).__nil__)) {
                _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface(_hs)));
            };
        };
        return { _0 : _ctx, _1 : _cancel };
    }
