package stdgo._internal.image.draw;
function _drawPaletted(_dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _floydSteinberg:Bool):Void {
        var __0 = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>), __1 = (null : stdgo.Slice<stdgo.GoUInt8>), __2 = (0 : stdgo.GoInt);
var _stride = __2, _pix = __1, _palette = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L966"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _1 : false };
            }, _p = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _palette = (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>(((@:checkr _p ?? throw "null pointer dereference").palette.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _p ?? throw "null pointer dereference").palette.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _p ?? throw "null pointer dereference").palette.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt32>(4, 4).__setNumber32__()]) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L968"
                for (_i => _col in (@:checkr _p ?? throw "null pointer dereference").palette) {
                    var __tmp__ = _col.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
                    _palette[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_r : stdgo.GoInt32);
                    _palette[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)] = (_g : stdgo.GoInt32);
                    _palette[(_i : stdgo.GoInt)][(2 : stdgo.GoInt)] = (_b : stdgo.GoInt32);
                    _palette[(_i : stdgo.GoInt)][(3 : stdgo.GoInt)] = (_a : stdgo.GoInt32);
                };
                {
                    final __tmp__0 = ((@:checkr _p ?? throw "null pointer dereference").pix.__slice__(_p.pixOffset(_r.min.x, _r.min.y)) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (@:checkr _p ?? throw "null pointer dereference").stride;
                    _pix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                };
            };
        };
        var _quantErrorCurr:stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>), _quantErrorNext:stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>> = (null : stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>);
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L982"
        if (_floydSteinberg) {
            _quantErrorCurr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>((_r.dx() + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_r.dx() + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_r.dx() + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt32>(4, 4).__setNumber32__()]) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>);
            _quantErrorNext = (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>((_r.dx() + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_r.dx() + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_r.dx() + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt32>(4, 4).__setNumber32__()]) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt32>>);
        };
        var _pxRGBA = (function(_x:stdgo.GoInt, _y:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
            var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L986"
            return _src.at(_x, _y).rGBA();
        } : (stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; });
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L990"
        {
            final __type__ = _src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>))) {
                var _src0:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__().value);
                _pxRGBA = function(_x:stdgo.GoInt, _y:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
                    var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L992"
                    return _src0.rGBAAt(_x, _y).rGBA();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>))) {
                var _src0:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__().value);
                _pxRGBA = function(_x:stdgo.GoInt, _y:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
                    var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L994"
                    return _src0.nRGBAAt(_x, _y).rGBA();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>))) {
                var _src0:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__().value);
                _pxRGBA = function(_x:stdgo.GoInt, _y:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
                    var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L996"
                    return _src0.yCbCrAt(_x, _y).rGBA();
                };
            };
        };
        var _out = ({ a : (65535 : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_rgba64.RGBA64);
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1001"
        {
            var _y = (0 : stdgo.GoInt);
            while (_y != (_r.dy())) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1002"
                {
                    var _x = (0 : stdgo.GoInt);
                    while (_x != (_r.dx())) {
                        var __tmp__ = _pxRGBA((_sp.x + _x : stdgo.GoInt), (_sp.y + _y : stdgo.GoInt)), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
var __0 = (_sr : stdgo.GoInt32), __1 = (_sg : stdgo.GoInt32), __2 = (_sb : stdgo.GoInt32), __3 = (_sa : stdgo.GoInt32);
var _ea = __3, _eb = __2, _eg = __1, _er = __0;
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1007"
                        if (_floydSteinberg) {
                            _er = stdgo._internal.image.draw.Draw__clamp._clamp((_er + (_quantErrorCurr[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] / (16 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
                            _eg = stdgo._internal.image.draw.Draw__clamp._clamp((_eg + (_quantErrorCurr[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] / (16 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
                            _eb = stdgo._internal.image.draw.Draw__clamp._clamp((_eb + (_quantErrorCurr[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] / (16 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
                            _ea = stdgo._internal.image.draw.Draw__clamp._clamp((_ea + (_quantErrorCurr[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] / (16 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
                        };
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1014"
                        if (_palette != null) {
                            var __0 = (0 : stdgo.GoInt), __1 = ((-1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _bestSum = __1, _bestIndex = __0;
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1019"
                            for (_index => _p in _palette) {
                                var _sum = (((stdgo._internal.image.draw.Draw__sqdiff._sqDiff(_er, _p[(0 : stdgo.GoInt)]) + stdgo._internal.image.draw.Draw__sqdiff._sqDiff(_eg, _p[(1 : stdgo.GoInt)]) : stdgo.GoUInt32) + stdgo._internal.image.draw.Draw__sqdiff._sqDiff(_eb, _p[(2 : stdgo.GoInt)]) : stdgo.GoUInt32) + stdgo._internal.image.draw.Draw__sqdiff._sqDiff(_ea, _p[(3 : stdgo.GoInt)]) : stdgo.GoUInt32);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1021"
                                if ((_sum < _bestSum : Bool)) {
                                    {
                                        final __tmp__0 = _index;
                                        final __tmp__1 = _sum;
                                        _bestIndex = @:binopAssign __tmp__0;
                                        _bestSum = @:binopAssign __tmp__1;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1023"
                                    if (_sum == ((0u32 : stdgo.GoUInt32))) {
                                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1024"
                                        break;
                                    };
                                };
                            };
                            _pix[((_y * _stride : stdgo.GoInt) + _x : stdgo.GoInt)] = (_bestIndex : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1030"
                            if (!_floydSteinberg) {
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1031"
                                {
                                    _x++;
                                    continue;
                                };
                            };
                            _er = (_er - (_palette[(_bestIndex : stdgo.GoInt)][((0 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt32);
                            _eg = (_eg - (_palette[(_bestIndex : stdgo.GoInt)][((1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt32);
                            _eb = (_eb - (_palette[(_bestIndex : stdgo.GoInt)][((2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt32);
                            _ea = (_ea - (_palette[(_bestIndex : stdgo.GoInt)][((3 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt32);
                        } else {
                            _out.r = (_er : stdgo.GoUInt16);
                            _out.g = (_eg : stdgo.GoUInt16);
                            _out.b = (_eb : stdgo.GoUInt16);
                            _out.a = (_ea : stdgo.GoUInt16);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1047"
                            _dst.set((_r.min.x + _x : stdgo.GoInt), (_r.min.y + _y : stdgo.GoInt), stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.image.color.Color_rgba64.RGBA64>)));
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1049"
                            if (!_floydSteinberg) {
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1050"
                                {
                                    _x++;
                                    continue;
                                };
                            };
                            {
                                var __tmp__ = _dst.at((_r.min.x + _x : stdgo.GoInt), (_r.min.y + _y : stdgo.GoInt)).rGBA();
                                _sr = @:tmpset0 __tmp__._0;
                                _sg = @:tmpset0 __tmp__._1;
                                _sb = @:tmpset0 __tmp__._2;
                                _sa = @:tmpset0 __tmp__._3;
                            };
                            _er = (_er - ((_sr : stdgo.GoInt32)) : stdgo.GoInt32);
                            _eg = (_eg - ((_sg : stdgo.GoInt32)) : stdgo.GoInt32);
                            _eb = (_eb - ((_sb : stdgo.GoInt32)) : stdgo.GoInt32);
                            _ea = (_ea - ((_sa : stdgo.GoInt32)) : stdgo.GoInt32);
                        };
_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] + ((_er * (3 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] = (_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] + ((_eg * (3 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] = (_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] + ((_eb * (3 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] = (_quantErrorNext[(_x + (0 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] + ((_ea * (3 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] + ((_er * (5 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] = (_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] + ((_eg * (5 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] = (_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] + ((_eb * (5 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] = (_quantErrorNext[(_x + (1 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] + ((_ea * (5 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] + ((_er * (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] = (_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] + ((_eg * (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] = (_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] + ((_eb * (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] = (_quantErrorNext[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] + ((_ea * (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] + ((_er * (7 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] = (_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] + ((_eg * (7 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] = (_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(2 : stdgo.GoInt)] + ((_eb * (7 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] = (_quantErrorCurr[(_x + (2 : stdgo.GoInt) : stdgo.GoInt)][(3 : stdgo.GoInt)] + ((_ea * (7 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
                        _x++;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1079"
                if (_floydSteinberg) {
                    {
                        final __tmp__0 = _quantErrorNext;
                        final __tmp__1 = _quantErrorCurr;
                        _quantErrorCurr = @:binopAssign __tmp__0;
                        _quantErrorNext = @:binopAssign __tmp__1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L1081"
                    for (_i => _ in _quantErrorNext) {
                        _quantErrorNext[(_i : stdgo.GoInt)] = (new stdgo.GoArray<stdgo.GoInt32>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__();
                    };
                };
                _y++;
            };
        };
    }
