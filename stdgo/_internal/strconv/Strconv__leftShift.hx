package stdgo._internal.strconv;
function _leftShift(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _k:stdgo.GoUInt):Void {
        var _delta = (stdgo._internal.strconv.Strconv__leftcheats._leftcheats[(_k : stdgo.GoInt)]._delta : stdgo.GoInt);
        if (stdgo._internal.strconv.Strconv__prefixIsLessThan._prefixIsLessThan((_a._d.__slice__((0 : stdgo.GoInt), _a._nd) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.strconv.Strconv__leftcheats._leftcheats[(_k : stdgo.GoInt)]._cutoff?.__copy__())) {
            _delta--;
        };
        var _r = (_a._nd : stdgo.GoInt);
        var _w = (_a._nd + _delta : stdgo.GoInt);
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            _r--;
            stdgo.Go.cfor((_r >= (0 : stdgo.GoInt) : Bool), _r--, {
                _n = (_n + (((((_a._d[(_r : stdgo.GoInt)] : stdgo.GoUInt) - (48u32 : stdgo.GoUInt) : stdgo.GoUInt)) << _k : stdgo.GoUInt)) : stdgo.GoUInt);
                var _quo = (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _rem = (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
                _w--;
                if ((_w < (_a._d.length) : Bool)) {
                    _a._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
                } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                    _a._trunc = true;
                };
                _n = _quo;
            });
        };
        while ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
            var _quo = (_n / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _rem = (_n - ((10u32 : stdgo.GoUInt) * _quo : stdgo.GoUInt) : stdgo.GoUInt);
            _w--;
            if ((_w < (_a._d.length) : Bool)) {
                _a._d[(_w : stdgo.GoInt)] = ((_rem + (48u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
            } else if (_rem != ((0u32 : stdgo.GoUInt))) {
                _a._trunc = true;
            };
            _n = _quo;
        };
        _a._nd = (_a._nd + (_delta) : stdgo.GoInt);
        if ((_a._nd >= (_a._d.length) : Bool)) {
            _a._nd = (_a._d.length);
        };
        _a._dp = (_a._dp + (_delta) : stdgo.GoInt);
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
