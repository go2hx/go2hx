package stdgo._internal.image.draw;
function drawMask(_dst:stdgo._internal.image.draw.Draw_Image.Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point, _mask:stdgo._internal.image.Image_Image.Image, _mp:stdgo._internal.image.Image_Point.Point, _op:stdgo._internal.image.draw.Draw_Op.Op):Void {
        stdgo._internal.image.draw.Draw__clip._clip(_dst, (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.image.Image_Rectangle.Rectangle>), _src, (stdgo.Go.setRef(_sp) : stdgo.Ref<stdgo._internal.image.Image_Point.Point>), _mask, (stdgo.Go.setRef(_mp) : stdgo.Ref<stdgo._internal.image.Image_Point.Point>));
        if (_r.empty()) {
            return;
        };
        {
            final __type__ = _dst;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__().value;
                if (_op == ((0 : stdgo._internal.image.draw.Draw_Op.Op))) {
                    if (_mask == null) {
                        {
                            final __type__ = _src;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__().value;
                                var __tmp__ = _src0.rgba(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
                                if (_sa == ((65535u32 : stdgo.GoUInt32))) {
                                    stdgo._internal.image.draw.Draw__drawFillSrc._drawFillSrc(_dst0, _r?.__copy__(), _sr, _sg, _sb, _sa);
                                } else {
                                    stdgo._internal.image.draw.Draw__drawFillOver._drawFillOver(_dst0, _r?.__copy__(), _sr, _sg, _sb, _sa);
                                };
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawCopyOver._drawCopyOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawNRGBAOver._drawNRGBAOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__.__underlying__().value;
                                if (_internal.image.internal.imageutil.Imageutil_drawYCbCr.drawYCbCr(_dst0, _r?.__copy__(), _src0, _sp?.__copy__())) {
                                    return;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_Gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawGray._drawGray(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawCMYK._drawCMYK(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            };
                        };
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mask) : stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>)) : stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>), _1 : false };
                        }, _mask0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __type__ = _src;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>))) {
                                    var _src0:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__().value;
                                    stdgo._internal.image.draw.Draw__drawGlyphOver._drawGlyphOver(_dst0, _r?.__copy__(), _src0, _mask0, _mp?.__copy__());
                                    return;
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>))) {
                                    var _src0:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__().value;
                                    stdgo._internal.image.draw.Draw__drawRGBAMaskOver._drawRGBAMaskOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__(), _mask0, _mp?.__copy__());
                                    return;
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>))) {
                                    var _src0:stdgo.Ref<stdgo._internal.image.Image_Gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__().value;
                                    stdgo._internal.image.draw.Draw__drawGrayMaskOver._drawGrayMaskOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__(), _mask0, _mp?.__copy__());
                                    return;
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.Image_RGBA64Image.RGBA64Image))) {
                                    var _src0:stdgo._internal.image.Image_RGBA64Image.RGBA64Image = __type__ == null ? (null : stdgo._internal.image.Image_RGBA64Image.RGBA64Image) : cast __type__;
                                    stdgo._internal.image.draw.Draw__drawRGBA64ImageMaskOver._drawRGBA64ImageMaskOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__(), _mask0, _mp?.__copy__());
                                    return;
                                };
                            };
                        };
                    };
                } else {
                    if (_mask == null) {
                        {
                            final __type__ = _src;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__().value;
                                var __tmp__ = _src0.rgba(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
                                stdgo._internal.image.draw.Draw__drawFillSrc._drawFillSrc(_dst0, _r?.__copy__(), _sr, _sg, _sb, _sa);
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>) : __type__.__underlying__().value;
                                var _d0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                                var _s0 = (_src0.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
                                stdgo._internal.image.draw.Draw__drawCopySrc._drawCopySrc((_dst0.pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>), _dst0.stride, _r?.__copy__(), (_src0.pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>), _src0.stride, _sp?.__copy__(), ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt));
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawNRGBASrc._drawNRGBASrc(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__.__underlying__().value;
                                if (_internal.image.internal.imageutil.Imageutil_drawYCbCr.drawYCbCr(_dst0, _r?.__copy__(), _src0, _sp?.__copy__())) {
                                    return;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_Gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawGray._drawGray(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>) : __type__.__underlying__().value;
                                stdgo._internal.image.draw.Draw__drawCMYK._drawCMYK(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                return;
                            };
                        };
                    };
                };
                stdgo._internal.image.draw.Draw__drawRGBA._drawRGBA(_dst0, _r?.__copy__(), _src, _sp?.__copy__(), _mask, _mp?.__copy__(), _op);
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>) : __type__.__underlying__().value;
                if (((_op == (1 : stdgo._internal.image.draw.Draw_Op.Op)) && (_mask == null) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>)) : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>), _1 : false };
                        }, _src0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _colorIndex = (_dst0.palette.index(_src0.c) : stdgo.GoUInt8);
                            var _i0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                            var _i1 = (_i0 + _r.dx() : stdgo.GoInt);
                            {
                                var _i = (_i0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _i1 : Bool), _i++, {
                                    _dst0.pix[(_i : stdgo.GoInt)] = _colorIndex;
                                });
                            };
                            var _firstRow = (_dst0.pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var _y = (_r.min.y + (1 : stdgo.GoInt) : stdgo.GoInt);
                                stdgo.Go.cfor((_y < _r.max.y : Bool), _y++, {
                                    _i0 = (_i0 + (_dst0.stride) : stdgo.GoInt);
                                    _i1 = (_i1 + (_dst0.stride) : stdgo.GoInt);
                                    stdgo.Go.copySlice((_dst0.pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>), _firstRow);
                                });
                            };
                            return;
                        } else if (!stdgo._internal.image.draw.Draw__processBackward._processBackward(_dst, _r?.__copy__(), _src, _sp?.__copy__())) {
                            stdgo._internal.image.draw.Draw__drawPaletted._drawPaletted(stdgo.Go.asInterface(_dst0), _r?.__copy__(), _src, _sp?.__copy__(), false);
                            return;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>) : __type__.__underlying__().value;
                if (((_op == (1 : stdgo._internal.image.draw.Draw_Op.Op)) && (_mask == null) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>)) : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>), _1 : false };
                        }, _src0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _d0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                            var _s0 = (_src0.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
                            stdgo._internal.image.draw.Draw__drawCopySrc._drawCopySrc((_dst0.pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>), _dst0.stride, _r?.__copy__(), (_src0.pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>), _src0.stride, _sp?.__copy__(), ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt));
                            return;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>) : __type__.__underlying__().value;
                if (((_op == (1 : stdgo._internal.image.draw.Draw_Op.Op)) && (_mask == null) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>)) : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA64.NRGBA64>), _1 : false };
                        }, _src0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _d0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                            var _s0 = (_src0.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
                            stdgo._internal.image.draw.Draw__drawCopySrc._drawCopySrc((_dst0.pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>), _dst0.stride, _r?.__copy__(), (_src0.pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>), _src0.stride, _sp?.__copy__(), ((8 : stdgo.GoInt) * _r.dx() : stdgo.GoInt));
                            return;
                        };
                    };
                };
            };
        };
        var __0 = (_r.min.x : stdgo.GoInt), __1 = (_r.max.x : stdgo.GoInt), __2 = (1 : stdgo.GoInt);
var _dx = __2, _x1 = __1, _x0 = __0;
        var __0 = (_r.min.y : stdgo.GoInt), __1 = (_r.max.y : stdgo.GoInt), __2 = (1 : stdgo.GoInt);
var _dy = __2, _y1 = __1, _y0 = __0;
        if (stdgo._internal.image.draw.Draw__processBackward._processBackward(_dst, _r?.__copy__(), _src, _sp?.__copy__())) {
            {
                final __tmp__0 = (_x1 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (_x0 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__2 = (-1 : stdgo.GoInt);
                _x0 = __tmp__0;
                _x1 = __tmp__1;
                _dx = __tmp__2;
            };
            {
                final __tmp__0 = (_y1 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (_y0 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__2 = (-1 : stdgo.GoInt);
                _y0 = __tmp__0;
                _y1 = __tmp__1;
                _dy = __tmp__2;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo._internal.image.draw.Draw_RGBA64Image.RGBA64Image)) : stdgo._internal.image.draw.Draw_RGBA64Image.RGBA64Image), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.draw.Draw_RGBA64Image.RGBA64Image), _1 : false };
            }, _dst0 = __tmp__._0, __0 = __tmp__._1;
            if (_dst0 != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.image.Image_RGBA64Image.RGBA64Image)) : stdgo._internal.image.Image_RGBA64Image.RGBA64Image), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.image.Image_RGBA64Image.RGBA64Image), _1 : false };
                    }, _src0 = __tmp__._0, __1 = __tmp__._1;
                    if (_src0 != null) {
                        if (_mask == null) {
                            var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                            var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                            {
                                var _y = (_y0 : stdgo.GoInt);
                                stdgo.Go.cfor(_y != (_y1), {
                                    final __tmp__0 = (_y + _dy : stdgo.GoInt);
                                    final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                                    final __tmp__2 = (_my + _dy : stdgo.GoInt);
                                    _y = __tmp__0;
                                    _sy = __tmp__1;
                                    _my = __tmp__2;
                                }, {
                                    var _sx = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
                                    var _mx = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
                                    {
                                        var _x = (_x0 : stdgo.GoInt);
                                        stdgo.Go.cfor(_x != (_x1), {
                                            final __tmp__0 = (_x + _dx : stdgo.GoInt);
                                            final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                                            final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                                            _x = __tmp__0;
                                            _sx = __tmp__1;
                                            _mx = __tmp__2;
                                        }, {
                                            if (_op == ((1 : stdgo._internal.image.draw.Draw_Op.Op))) {
                                                _dst0.setRGBA64(_x, _y, _src0.rgba64at(_sx, _sy)?.__copy__());
                                            } else {
                                                var _srgba = (_src0.rgba64at(_sx, _sy)?.__copy__() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
                                                var _a = ((65535u32 : stdgo.GoUInt32) - (_srgba.a : stdgo.GoUInt32) : stdgo.GoUInt32);
                                                var _drgba = (_dst0.rgba64at(_x, _y)?.__copy__() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
                                                _dst0.setRGBA64(_x, _y, ({ r : ((((((_drgba.r : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.r : stdgo.GoUInt16), g : ((((((_drgba.g : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.g : stdgo.GoUInt16), b : ((((((_drgba.b : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.b : stdgo.GoUInt16), a : ((((((_drgba.a : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.a : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_RGBA64.RGBA64));
                                            };
                                        });
                                    };
                                });
                            };
                            return;
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mask) : stdgo._internal.image.Image_RGBA64Image.RGBA64Image)) : stdgo._internal.image.Image_RGBA64Image.RGBA64Image), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.image.Image_RGBA64Image.RGBA64Image), _1 : false };
                            }, _mask0 = __tmp__._0, __2 = __tmp__._1;
                            if (_mask0 != null) {
                                var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                                var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                                {
                                    var _y = (_y0 : stdgo.GoInt);
                                    stdgo.Go.cfor(_y != (_y1), {
                                        final __tmp__0 = (_y + _dy : stdgo.GoInt);
                                        final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                                        final __tmp__2 = (_my + _dy : stdgo.GoInt);
                                        _y = __tmp__0;
                                        _sy = __tmp__1;
                                        _my = __tmp__2;
                                    }, {
                                        var _sx = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
                                        var _mx = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
                                        {
                                            var _x = (_x0 : stdgo.GoInt);
                                            stdgo.Go.cfor(_x != (_x1), {
                                                final __tmp__0 = (_x + _dx : stdgo.GoInt);
                                                final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                                                final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                                                _x = __tmp__0;
                                                _sx = __tmp__1;
                                                _mx = __tmp__2;
                                            }, {
                                                var _ma = (_mask0.rgba64at(_mx, _my).a : stdgo.GoUInt32);
                                                if (_ma == ((0u32 : stdgo.GoUInt32))) {
                                                    if (_op == ((0 : stdgo._internal.image.draw.Draw_Op.Op))) {} else {
                                                        _dst0.setRGBA64(_x, _y, (new stdgo._internal.image.color.Color_RGBA64.RGBA64() : stdgo._internal.image.color.Color_RGBA64.RGBA64));
                                                    };
                                                } else if (((_ma == (65535u32 : stdgo.GoUInt32)) && (_op == (1 : stdgo._internal.image.draw.Draw_Op.Op)) : Bool)) {
                                                    _dst0.setRGBA64(_x, _y, _src0.rgba64at(_sx, _sy)?.__copy__());
                                                } else {
                                                    var _srgba = (_src0.rgba64at(_sx, _sy)?.__copy__() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
                                                    if (_op == ((0 : stdgo._internal.image.draw.Draw_Op.Op))) {
                                                        var _drgba = (_dst0.rgba64at(_x, _y)?.__copy__() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
                                                        var _a = ((65535u32 : stdgo.GoUInt32) - ((((_srgba.a : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                                        _dst0.setRGBA64(_x, _y, ({ r : ((((((_drgba.r : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.r : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), g : ((((((_drgba.g : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.g : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), b : ((((((_drgba.b : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.b : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), a : ((((((_drgba.a : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.a : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_RGBA64.RGBA64));
                                                    } else {
                                                        _dst0.setRGBA64(_x, _y, ({ r : ((((_srgba.r : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), g : ((((_srgba.g : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), b : ((((_srgba.b : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), a : ((((_srgba.a : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_RGBA64.RGBA64));
                                                    };
                                                };
                                            });
                                        };
                                    });
                                };
                                return;
                            };
                        };
                    };
                };
            };
        };
        var _out:stdgo._internal.image.color.Color_RGBA64.RGBA64 = ({} : stdgo._internal.image.color.Color_RGBA64.RGBA64);
        var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
        var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
        {
            var _y = (_y0 : stdgo.GoInt);
            stdgo.Go.cfor(_y != (_y1), {
                final __tmp__0 = (_y + _dy : stdgo.GoInt);
                final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                final __tmp__2 = (_my + _dy : stdgo.GoInt);
                _y = __tmp__0;
                _sy = __tmp__1;
                _my = __tmp__2;
            }, {
                var _sx = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
                var _mx = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
                {
                    var _x = (_x0 : stdgo.GoInt);
                    stdgo.Go.cfor(_x != (_x1), {
                        final __tmp__0 = (_x + _dx : stdgo.GoInt);
                        final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                        final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                        _x = __tmp__0;
                        _sx = __tmp__1;
                        _mx = __tmp__2;
                    }, {
                        var _ma = ((65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        if (_mask != null) {
                            {
                                var __tmp__ = _mask.at(_mx, _my).rgba();
                                _ma = __tmp__._3;
                            };
                        };
                        if (_ma == ((0u32 : stdgo.GoUInt32))) {
                            if (_op == ((0 : stdgo._internal.image.draw.Draw_Op.Op))) {} else {
                                _dst.set(_x, _y, stdgo.Go.asInterface(stdgo._internal.image.color.Color_transparent.transparent));
                            };
                        } else if (((_ma == (65535u32 : stdgo.GoUInt32)) && (_op == (1 : stdgo._internal.image.draw.Draw_Op.Op)) : Bool)) {
                            _dst.set(_x, _y, _src.at(_sx, _sy));
                        } else {
                            var __tmp__ = _src.at(_sx, _sy).rgba(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
                            if (_op == ((0 : stdgo._internal.image.draw.Draw_Op.Op))) {
                                var __tmp__ = _dst.at(_x, _y).rgba(), _dr:stdgo.GoUInt32 = __tmp__._0, _dg:stdgo.GoUInt32 = __tmp__._1, _db:stdgo.GoUInt32 = __tmp__._2, _da:stdgo.GoUInt32 = __tmp__._3;
                                var _a = ((65535u32 : stdgo.GoUInt32) - (((_sa * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                _out.r = (((((_dr * _a : stdgo.GoUInt32) + (_sr * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                                _out.g = (((((_dg * _a : stdgo.GoUInt32) + (_sg * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                                _out.b = (((((_db * _a : stdgo.GoUInt32) + (_sb * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                                _out.a = (((((_da * _a : stdgo.GoUInt32) + (_sa * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                            } else {
                                _out.r = (((_sr * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                                _out.g = (((_sg * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                                _out.b = (((_sb * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                                _out.a = (((_sa * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16);
                            };
                            _dst.set(_x, _y, stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.image.color.Color_RGBA64.RGBA64>)));
                        };
                    });
                };
            });
        };
    }
