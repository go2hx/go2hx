package stdgo._internal.net.http;
function _isUnsupportedTEError(_err:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError>), _1 : false };
        }, __143 = __tmp__._0, _ok = __tmp__._1;
        return _ok;
    }
