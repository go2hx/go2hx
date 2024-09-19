package stdgo._internal.strconv;
function _unhex(_b:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _v = (0 : stdgo.GoInt32), _ok = false;
        var _c = (_b : stdgo.GoInt32);
        if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : (_c - (48 : stdgo.GoInt32) : stdgo.GoInt32), _1 : true };
        } else if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : ((_c - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32), _1 : true };
        } else if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (70 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : ((_c - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32), _1 : true };
        };
        return { _0 : _v, _1 : _ok };
    }
