package stdgo._internal.image;
function _add2NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((((_x < (0 : stdgo.GoInt) : Bool)) || ((_y < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var _a = (_x + _y : stdgo.GoInt);
        if ((_a < (0 : stdgo.GoInt) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return _a;
    }
