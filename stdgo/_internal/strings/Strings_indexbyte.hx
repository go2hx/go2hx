package stdgo._internal.strings;
function indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_s?.__copy__(), _c);
    }
