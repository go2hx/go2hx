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
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L222"
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
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L231"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bpp : Bool)) {
                _cdat4[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - _pdat[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat4[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L235"
        {
            var _i = (_bpp : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat4[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - stdgo._internal.image.png.Png__paeth._paeth(_cdat0[(_i - _bpp : stdgo.GoInt)], _pdat[(_i : stdgo.GoInt)], _pdat[(_i - _bpp : stdgo.GoInt)]) : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat4[(_i : stdgo.GoInt)])) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L238"
                if ((_sum >= _best : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L239"
                    break;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L242"
        if ((_sum < _best : Bool)) {
            _best = _sum;
            _filter = (4 : stdgo.GoInt);
        };
        _sum = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L249"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat0[(_i : stdgo.GoInt)])) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L251"
                if ((_sum >= _best : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L252"
                    break;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L255"
        if ((_sum < _best : Bool)) {
            _best = _sum;
            _filter = (0 : stdgo.GoInt);
        };
        _sum = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L262"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bpp : Bool)) {
                _cdat1[(_i : stdgo.GoInt)] = _cdat0[(_i : stdgo.GoInt)];
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat1[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L266"
        {
            var _i = (_bpp : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat1[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - _cdat0[(_i - _bpp : stdgo.GoInt)] : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat1[(_i : stdgo.GoInt)])) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L269"
                if ((_sum >= _best : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L270"
                    break;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L273"
        if ((_sum < _best : Bool)) {
            _best = _sum;
            _filter = (1 : stdgo.GoInt);
        };
        _sum = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L280"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bpp : Bool)) {
                _cdat3[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - (_pdat[(_i : stdgo.GoInt)] / (2 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat3[(_i : stdgo.GoInt)])) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L284"
        {
            var _i = (_bpp : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _cdat3[(_i : stdgo.GoInt)] = (_cdat0[(_i : stdgo.GoInt)] - (((((_cdat0[(_i - _bpp : stdgo.GoInt)] : stdgo.GoInt) + (_pdat[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
_sum = (_sum + (stdgo._internal.image.png.Png__abs8._abs8(_cdat3[(_i : stdgo.GoInt)])) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L287"
                if ((_sum >= _best : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L288"
                    break;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L291"
        if ((_sum < _best : Bool)) {
            _filter = (3 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L295"
        return _filter;
    }
