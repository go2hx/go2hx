package stdgo._internal.net.http;
function _http2isNoCachedConnError(_err:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T__interface_0.T__interface_0)) : stdgo._internal.net.http.Http_T__interface_0.T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.net.http.Http_T__interface_0.T__interface_0), _1 : false };
        }, __137 = __tmp__._0, _ok = __tmp__._1;
        return _ok;
    }
