package stdgo._internal.encoding.csv;
function _validDelim(_r:stdgo.GoInt32):Bool {
        return (((((_r != ((0 : stdgo.GoInt32)) && _r != ((34 : stdgo.GoInt32)) : Bool) && _r != ((13 : stdgo.GoInt32)) : Bool) && _r != ((10 : stdgo.GoInt32)) : Bool) && stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r) : Bool) && (_r != (65533 : stdgo.GoInt32)) : Bool);
    }
