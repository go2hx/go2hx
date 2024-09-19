package stdgo._internal.regexp.syntax;
function _unhex(_c:stdgo.GoInt32):stdgo.GoInt32 {
        if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return (_c - (48 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_c - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (70 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_c - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return (-1 : stdgo.GoInt32);
    }
