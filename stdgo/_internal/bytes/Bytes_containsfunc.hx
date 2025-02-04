package stdgo._internal.bytes;
function containsFunc(_b:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):Bool {
        return (stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_b, _f) >= (0 : stdgo.GoInt) : Bool);
    }
