package stdgo._internal.net.http;
function _isCommonNetReadError(_err:stdgo.Error):Bool {
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            return true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
            }, _neterr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _neterr.timeout() : Bool)) {
                return true;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : false };
            }, _oe = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && ((@:checkr _oe ?? throw "null pointer dereference").op == ("read" : stdgo.GoString)) : Bool)) {
                return true;
            };
        };
        return false;
    }
