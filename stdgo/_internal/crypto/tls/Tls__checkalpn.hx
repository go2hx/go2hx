package stdgo._internal.crypto.tls;
function _checkALPN(_clientProtos:stdgo.Slice<stdgo.GoString>, _serverProto:stdgo.GoString, _quic:Bool):stdgo.Error {
        if (_serverProto == ((stdgo.Go.str() : stdgo.GoString))) {
            if ((_quic && ((_clientProtos.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: server did not select an ALPN protocol" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        };
        if ((_clientProtos.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: server advertised unrequested ALPN extension" : stdgo.GoString));
        };
        for (__65 => _proto in _clientProtos) {
            if (_proto == (_serverProto)) {
                return (null : stdgo.Error);
            };
        };
        return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unadvertised ALPN protocol" : stdgo.GoString));
    }
