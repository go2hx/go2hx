package stdgo._internal.net.http;
function _http2canRetryError(_err:stdgo.Error):Bool {
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errClientConnUnusable._http2errClientConnUnusable)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errClientConnGotGoAway._http2errClientConnGotGoAway)) : Bool)) {
            return true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
            }, _se = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if (((_se.code == (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) && (stdgo.Go.toInterface(_se.cause) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errFromPeer._http2errFromPeer)) : Bool)) {
                    return true;
                };
                return _se.code == ((7u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
            };
        };
        return false;
    }
