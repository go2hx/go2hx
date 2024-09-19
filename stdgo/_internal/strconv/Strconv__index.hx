package stdgo._internal.strconv;
function _index(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_s?.__copy__(), _c);
    }
