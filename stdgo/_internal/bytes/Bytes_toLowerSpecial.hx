package stdgo._internal.bytes;
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_map_.map_(_c.toLower, _s);
    }