package stdgo._internal.net.http;
function _http2isEOFOrNetReadError(_err:stdgo.Error):Bool {
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return true;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : false };
        }, _ne = __tmp__._0, _ok = __tmp__._1;
        return (_ok && (_ne.op == ("read" : stdgo.GoString)) : Bool);
    }
