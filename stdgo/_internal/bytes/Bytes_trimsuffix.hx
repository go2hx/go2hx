package stdgo._internal.bytes;
function trimSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L847"
        if (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_s, _suffix)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L848"
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L850"
        return _s;
    }
