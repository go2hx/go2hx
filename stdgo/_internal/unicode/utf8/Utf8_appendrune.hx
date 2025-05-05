package stdgo._internal.unicode.utf8;
function appendRune(_p:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L377"
        if (((_r : stdgo.GoUInt32) <= (127u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L378"
            return (_p.__append__((_r : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L380"
        return stdgo._internal.unicode.utf8.Utf8__appendrunenonascii._appendRuneNonASCII(_p, _r);
    }
