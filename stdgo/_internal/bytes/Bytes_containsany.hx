package stdgo._internal.bytes;
function containsAny(_b:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L81"
        return (stdgo._internal.bytes.Bytes_indexany.indexAny(_b, _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
