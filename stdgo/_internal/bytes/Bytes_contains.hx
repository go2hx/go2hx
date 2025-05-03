package stdgo._internal.bytes;
function contains(_b:stdgo.Slice<stdgo.GoUInt8>, _subslice:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L76"
        return stdgo._internal.bytes.Bytes_index.index(_b, _subslice) != ((-1 : stdgo.GoInt));
    }
