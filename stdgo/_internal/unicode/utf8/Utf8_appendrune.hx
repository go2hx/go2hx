package stdgo._internal.unicode.utf8;
function appendRune(_p:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> {
        if (((_r : stdgo.GoUInt32) <= (127u32 : stdgo.GoUInt32) : Bool)) {
            return (_p.__append__((_r : stdgo.GoUInt8)));
        };
        return stdgo._internal.unicode.utf8.Utf8__appendrunenonascii._appendRuneNonASCII(_p, _r);
    }
