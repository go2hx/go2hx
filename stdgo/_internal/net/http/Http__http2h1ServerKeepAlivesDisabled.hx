package stdgo._internal.net.http;
function _http2h1ServerKeepAlivesDisabled(_hs:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        var _x:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface(_hs));
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo._internal.net.http.Http_T__http2h1ServerKeepAlivesDisabled___localname___I_235671.T__http2h1ServerKeepAlivesDisabled___localname___I_235671)) : stdgo._internal.net.http.Http_T__http2h1ServerKeepAlivesDisabled___localname___I_235671.T__http2h1ServerKeepAlivesDisabled___localname___I_235671), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T__http2h1ServerKeepAlivesDisabled___localname___I_235671.T__http2h1ServerKeepAlivesDisabled___localname___I_235671), _1 : false };
            }, _hs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return !_hs._doKeepAlives();
            };
        };
        return false;
    }
