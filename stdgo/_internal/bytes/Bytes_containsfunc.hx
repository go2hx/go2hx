package stdgo._internal.bytes;
function containsFunc(_b:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L91"
        return (stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_b, _f) >= (0 : stdgo.GoInt) : Bool);
    }
