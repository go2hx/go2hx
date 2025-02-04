package stdgo._internal.unicode;
function isDigit(_r:stdgo.GoInt32):Bool {
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            return (((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool);
        };
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_digit.digit, _r);
    }
