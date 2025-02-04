package stdgo._internal.unicode;
function toTitle(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                _r = (_r - ((32 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            return _r;
        };
        return stdgo._internal.unicode.Unicode_to.to((2 : stdgo.GoInt), _r);
    }
