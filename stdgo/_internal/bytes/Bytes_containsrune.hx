package stdgo._internal.bytes;
function containsRune(_b:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L86"
        return (stdgo._internal.bytes.Bytes_indexrune.indexRune(_b, _r) >= (0 : stdgo.GoInt) : Bool);
    }
