package stdgo._internal.net.http;
function _http2cutoff64(_base:stdgo.GoInt):stdgo.GoUInt64 {
        if ((_base < (2 : stdgo.GoInt) : Bool)) {
            return (0i64 : stdgo.GoUInt64);
        };
        return (((-1i64 : stdgo.GoUInt64) / (_base : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
