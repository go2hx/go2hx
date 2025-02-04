package stdgo._internal.unicode.utf16;
function isSurrogate(_r:stdgo.GoInt32):Bool {
        return (((55296 : stdgo.GoInt32) <= _r : Bool) && (_r < (57344 : stdgo.GoInt32) : Bool) : Bool);
    }
