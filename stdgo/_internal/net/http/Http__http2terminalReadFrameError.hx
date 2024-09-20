package stdgo._internal.net.http;
function _http2terminalReadFrameError(_err:stdgo.Error):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
            }, __132 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return false;
            };
        };
        return _err != null;
    }
