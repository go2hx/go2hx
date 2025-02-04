package stdgo._internal.strings;
function _isSeparator(_r:stdgo.GoInt32):Bool {
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
                return false;
            };
            return true;
        };
        if ((stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
            return false;
        };
        return stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
    }
