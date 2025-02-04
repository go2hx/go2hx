package stdgo._internal.strconv;
function _rightShift(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _k:stdgo.GoUInt):Void {
        var _r = (0 : stdgo.GoInt);
        var _w = (0 : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        while ((_n >> _k : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
            if ((_r >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool)) {
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _a ?? throw "null pointer dereference")._nd = (0 : stdgo.GoInt);
                    return;
                };
                while ((_n >> _k : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                    _n = (_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    _r++;
                };
                break;
            };
var _c = ((@:checkr _a ?? throw "null pointer dereference")._d[(_r : stdgo.GoInt)] : stdgo.GoUInt);
_n = (((_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) + _c : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _r++;
        };
        (@:checkr _a ?? throw "null pointer dereference")._dp = ((@:checkr _a ?? throw "null pointer dereference")._dp - ((_r - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _mask:stdgo.GoUInt = ((((1u32 : stdgo.GoUInt) << _k : stdgo.GoUInt)) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        while ((_r < (@:checkr _a ?? throw "null pointer dereference")._nd : Bool)) {
            var _c = ((@:checkr _a ?? throw "null pointer dereference")._d[(_r : stdgo.GoInt)] : stdgo.GoUInt);
var _dig = (_n >> _k : stdgo.GoUInt);
_n = (_n & (_mask) : stdgo.GoUInt);
(@:checkr _a ?? throw "null pointer dereference")._d[(_w : stdgo.GoInt)] = ((_dig + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
_w++;
_n = (((_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) + _c : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _r++;
        };
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _dig = (_n >> _k : stdgo.GoUInt);
            _n = (_n & (_mask) : stdgo.GoUInt);
            if ((_w < ((@:checkr _a ?? throw "null pointer dereference")._d.length) : Bool)) {
                (@:checkr _a ?? throw "null pointer dereference")._d[(_w : stdgo.GoInt)] = ((_dig + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
                _w++;
            } else if ((_dig > (0u32 : stdgo.GoUInt) : Bool)) {
                (@:checkr _a ?? throw "null pointer dereference")._trunc = true;
            };
            _n = (_n * (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
        };
        (@:checkr _a ?? throw "null pointer dereference")._nd = _w;
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
