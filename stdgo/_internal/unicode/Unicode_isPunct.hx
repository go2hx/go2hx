package stdgo._internal.unicode;
function isPunct(_r:stdgo.GoInt32):Bool {
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        };
        return stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_punct.punct, _r);
    }
