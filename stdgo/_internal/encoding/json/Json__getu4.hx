package stdgo._internal.encoding.json;
function _getu4(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        if (((((_s.length) < (6 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != (117 : stdgo.GoUInt8)) : Bool)) {
            return (-1 : stdgo.GoInt32);
        };
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        for (__4 => _c in (_s.__slice__((2 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) {
            if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = ((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = ((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                return (-1 : stdgo.GoInt32);
            };
            _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + (_c : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return _r;
    }
