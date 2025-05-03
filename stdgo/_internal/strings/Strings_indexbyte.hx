package stdgo._internal.strings;
function indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L118"
        return stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_s?.__copy__(), _c);
    }
