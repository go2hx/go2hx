package stdgo._internal.bytes;
function containsAny(_b:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):Bool {
        return (stdgo._internal.bytes.Bytes_indexany.indexAny(_b, _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
