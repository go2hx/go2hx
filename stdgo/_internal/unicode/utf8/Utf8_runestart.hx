package stdgo._internal.unicode.utf8;
function runeStart(_b:stdgo.GoUInt8):Bool {
        return (_b & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((128 : stdgo.GoUInt8));
    }
