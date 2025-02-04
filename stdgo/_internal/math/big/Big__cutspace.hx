package stdgo._internal.math.big;
function _cutSpace(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if (stdgo._internal.unicode.Unicode_isspace.isSpace(_r)) {
            return (-1 : stdgo.GoInt32);
        };
        return _r;
    }
