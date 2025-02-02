package stdgo._internal.bytes;
function contains(_b:stdgo.Slice<stdgo.GoUInt8>, _subslice:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return stdgo._internal.bytes.Bytes_index.index(_b, _subslice) != ((-1 : stdgo.GoInt));
    }
