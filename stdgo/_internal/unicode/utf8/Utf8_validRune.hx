package stdgo._internal.unicode.utf8;
function validRune(_r:stdgo.GoInt32):Bool {
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (55296 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        } else if ((((57343 : stdgo.GoInt32) < _r : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        };
        return false;
    }
