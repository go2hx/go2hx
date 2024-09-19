package stdgo._internal.net.http;
function _http2mustUint31(_v:stdgo.GoInt32):stdgo.GoUInt32 {
        if (((_v < (0 : stdgo.GoInt32) : Bool) || (_v > (2147483647 : stdgo.GoInt32) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("out of range" : stdgo.GoString));
        };
        return (_v : stdgo.GoUInt32);
    }
