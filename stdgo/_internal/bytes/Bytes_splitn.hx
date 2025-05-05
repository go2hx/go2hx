package stdgo._internal.bytes;
function splitN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L386"
        return stdgo._internal.bytes.Bytes__gensplit._genSplit(_s, _sep, (0 : stdgo.GoInt), _n);
    }
