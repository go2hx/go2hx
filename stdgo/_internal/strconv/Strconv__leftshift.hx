package stdgo._internal.strconv;
function _leftShift(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _k:stdgo.GoUInt):Void {
        var _delta = (stdgo._internal.strconv.Strconv__leftcheats._leftcheats[(_k : stdgo.GoInt)]._delta : stdgo.GoInt);
        if (stdgo._internal.strconv.Strconv__prefixislessthan._prefixIsLessThan(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.strconv.Strconv__leftcheats._leftcheats[(_k : stdgo.GoInt)]._cutoff?.__copy__())) {
            _delta--;
        };
        var _r = ((@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt);
        var _w = ((@:checkr _a ?? throw "null pointer dereference")._nd + _delta : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            _r--;
            while ((_r >= (0 : stdgo.GoInt) : Bool)) {
                _n = (_n + ((((((@:checkr _a ?? throw "null pointer dereference")._d[(_r : stdgo.GoInt)] : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt)) << _k : stdgo.GoUInt)) : stdgo.GoUInt);
var _quo = (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _rem = (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
_w--;
if ((_w < ((@:checkr _a ?? throw "null pointer dereference")._d.length) : Bool)) {
                    (@:checkr _a ?? throw "null pointer dereference")._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
                } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _a ?? throw "null pointer dereference")._trunc = true;
                };
_n = _quo;
                _r--;
            };
        };
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _quo = (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _rem = (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
            _w--;
            if ((_w < ((@:checkr _a ?? throw "null pointer dereference")._d.length) : Bool)) {
                (@:checkr _a ?? throw "null pointer dereference")._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
            } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                (@:checkr _a ?? throw "null pointer dereference")._trunc = true;
            };
            _n = _quo;
        };
        (@:checkr _a ?? throw "null pointer dereference")._nd = ((@:checkr _a ?? throw "null pointer dereference")._nd + (_delta) : stdgo.GoInt);
        if (((@:checkr _a ?? throw "null pointer dereference")._nd >= ((@:checkr _a ?? throw "null pointer dereference")._d.length) : Bool)) {
            (@:checkr _a ?? throw "null pointer dereference")._nd = ((@:checkr _a ?? throw "null pointer dereference")._d.length);
        };
        (@:checkr _a ?? throw "null pointer dereference")._dp = ((@:checkr _a ?? throw "null pointer dereference")._dp + (_delta) : stdgo.GoInt);
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
