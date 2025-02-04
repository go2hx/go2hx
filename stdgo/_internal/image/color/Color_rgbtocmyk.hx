package stdgo._internal.image.color;
function rGBToCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; var _3 : stdgo.GoUInt8; } {
        var _rr = (_r : stdgo.GoUInt32);
        var _gg = (_g : stdgo.GoUInt32);
        var _bb = (_b : stdgo.GoUInt32);
        var _w = (_rr : stdgo.GoUInt32);
        if ((_w < _gg : Bool)) {
            _w = _gg;
        };
        if ((_w < _bb : Bool)) {
            _w = _bb;
        };
        if (_w == ((0u32 : stdgo.GoUInt32))) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoUInt8), _2 : (0 : stdgo.GoUInt8), _3 : (255 : stdgo.GoUInt8) };
        };
        var _c = ((((_w - _rr : stdgo.GoUInt32)) * (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _w : stdgo.GoUInt32);
        var _m = ((((_w - _gg : stdgo.GoUInt32)) * (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _w : stdgo.GoUInt32);
        var _y = ((((_w - _bb : stdgo.GoUInt32)) * (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _w : stdgo.GoUInt32);
        return { _0 : (_c : stdgo.GoUInt8), _1 : (_m : stdgo.GoUInt8), _2 : (_y : stdgo.GoUInt8), _3 : (((255u32 : stdgo.GoUInt32) - _w : stdgo.GoUInt32) : stdgo.GoUInt8) };
    }
