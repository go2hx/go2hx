package stdgo._internal.bytes;
function toTitle(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_map_.map_(stdgo._internal.unicode.Unicode_totitle.toTitle, _s);
    }
