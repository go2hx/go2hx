package stdgo._internal.bytes;
function trimPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L838"
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_s, _prefix)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L839"
            return (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L841"
        return _s;
    }
