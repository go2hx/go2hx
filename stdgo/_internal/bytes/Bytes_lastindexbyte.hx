package stdgo._internal.bytes;
function lastIndexByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L147"
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L148"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L149"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L152"
        return (-1 : stdgo.GoInt);
    }
