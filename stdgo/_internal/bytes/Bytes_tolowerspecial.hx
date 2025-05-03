package stdgo._internal.bytes;
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L721"
        return stdgo._internal.bytes.Bytes_map_.map_(_c.toLower, _s);
    }
