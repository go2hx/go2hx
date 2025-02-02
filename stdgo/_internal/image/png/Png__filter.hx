package stdgo._internal.image.png;
function _filter(_cr:stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>>, _pr:stdgo.Slice<stdgo.GoUInt8>, _bpp:stdgo.GoInt):stdgo.GoInt {
        var _cdat0 = (_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _cdat1 = (_cr[(1 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _cdat2 = (_cr[(2 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _cdat3 = (_cr[(3 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _cdat4 = (_cr[(4 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _pdat = (_pr.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (_cdat0.length : stdgo.GoInt);
        var _sum = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat2[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - _pdat[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat2[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        var _best = (_sum : stdgo.GoInt);
        var _filter = (2 : stdgo.GoInt);
        _sum = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bpp : Bool)) {
                _cdat4[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - _pdat[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat4[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        {
            var _i = (_bpp : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat4[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - stdgo._internal.image.png.Png__paeth._paeth(_cdat0[(_i - _bpp : stdgo.GoInt)], _pdat[(_i : stdgo.GoInt)], _pdat[(_i - _bpp : stdgo.GoInt)]) : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat4[(_i : stdgo.GoInt)])) : stdgo.GoInt);
if ((_sum >= _best : Bool)) {
                    break;
                };
                _i++;
            };
        };
        if ((_sum < _best : Bool)) {
            _best = _sum;
            _filter = (4 : stdgo.GoInt);
        };
        _sum = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat0[(_i : stdgo.GoInt)])) : stdgo.GoInt);
if ((_sum >= _best : Bool)) {
                    break;
                };
                _i++;
            };
        };
        if ((_sum < _best : Bool)) {
            _best = _sum;
            _filter = (0 : stdgo.GoInt);
        };
        _sum = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bpp : Bool)) {
                _cdat1[(_i : stdgo.GoInt)] = _cdat0[(_i : stdgo.GoInt)];
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat1[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        {
            var _i = (_bpp : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat1[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - _cdat0[(_i - _bpp : stdgo.GoInt)] : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat1[(_i : stdgo.GoInt)])) : stdgo.GoInt);
if ((_sum >= _best : Bool)) {
                    break;
                };
                _i++;
            };
        };
        if ((_sum < _best : Bool)) {
            _best = _sum;
            _filter = (1 : stdgo.GoInt);
        };
        _sum = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bpp : Bool)) {
                _cdat3[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - (_pdat[(_i : stdgo.GoInt)] / (2 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat3[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        {
            var _i = (_bpp : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat3[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - (((((_cdat0[(_i - _bpp : stdgo.GoInt)] : stdgo.GoInt) + (_pdat[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat3[(_i : stdgo.GoInt)])) : stdgo.GoInt);
if ((_sum >= _best : Bool)) {
                    break;
                };
                _i++;
            };
        };
        if ((_sum < _best : Bool)) {
            _filter = (3 : stdgo.GoInt);
        };
        return _filter;
    }
