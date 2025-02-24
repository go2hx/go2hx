package stdgo._internal.image.gif;
function _encodeColorTable(_dst:stdgo.Slice<stdgo.GoUInt8>, _p:stdgo._internal.image.color.Color_palette.Palette, _size:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        if (((_size : stdgo.GoUInt) >= (stdgo._internal.image.gif.Gif__log2lookup._log2Lookup.length : stdgo.GoUInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("gif: cannot encode color table with more than 256 entries" : stdgo.GoString)) };
        };
        for (_i => _c in _p) {
            if (_c == null) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("gif: cannot encode color table with nil entries" : stdgo.GoString)) };
            };
            var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _b = __2, _g = __1, _r = __0;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.image.color.Color_rgba.RGBA)) : stdgo._internal.image.color.Color_rgba.RGBA), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.image.color.Color_rgba.RGBA), _1 : false };
                }, _rgba = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = _rgba.r;
                        final __tmp__1 = _rgba.g;
                        final __tmp__2 = _rgba.b;
                        _r = __tmp__0;
                        _g = __tmp__1;
                        _b = __tmp__2;
                    };
                } else {
                    var __tmp__ = _c.rGBA(), _rr:stdgo.GoUInt32 = __tmp__._0, _gg:stdgo.GoUInt32 = __tmp__._1, _bb:stdgo.GoUInt32 = __tmp__._2, __0:stdgo.GoUInt32 = __tmp__._3;
                    {
                        final __tmp__0 = ((_rr >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        final __tmp__1 = ((_gg >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        final __tmp__2 = ((_bb >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _r = __tmp__0;
                        _g = __tmp__1;
                        _b = __tmp__2;
                    };
                };
            };
            _dst[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] = _r;
            _dst[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _g;
            _dst[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] = _b;
        };
        var _n = (stdgo._internal.image.gif.Gif__log2lookup._log2Lookup[(_size : stdgo.GoInt)] : stdgo.GoInt);
        if ((_n > (_p.length) : Bool)) {
            var _fill = (_dst.__slice__(((3 : stdgo.GoInt) * (_p.length) : stdgo.GoInt), ((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _fill) {
                _fill[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
        return { _0 : ((3 : stdgo.GoInt) * _n : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
