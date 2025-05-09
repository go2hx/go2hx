package stdgo._internal.image.draw;
function drawMask(_dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _mask:stdgo._internal.image.Image_image.Image, _mp:stdgo._internal.image.Image_point.Point, _op:stdgo._internal.image.draw.Draw_op.Op):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L117"
        stdgo._internal.image.draw.Draw__clip._clip(_dst, (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.image.Image_rectangle.Rectangle>), _src, (stdgo.Go.setRef(_sp) : stdgo.Ref<stdgo._internal.image.Image_point.Point>), _mask, (stdgo.Go.setRef(_mp) : stdgo.Ref<stdgo._internal.image.Image_point.Point>));
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L118"
        if (_r.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L119"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L129"
        {
            final __type__ = _dst;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L131"
                if (_op == ((0 : stdgo._internal.image.draw.Draw_op.Op))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L132"
                    if (_mask == null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L133"
                        {
                            final __type__ = _src;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__().value);
                                var __tmp__ = _src0.rGBA(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L136"
                                if (_sa == ((65535u32 : stdgo.GoUInt32))) {
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L137"
                                    stdgo._internal.image.draw.Draw__drawfillsrc._drawFillSrc(_dst0, _r?.__copy__(), _sr, _sg, _sb, _sa);
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L139"
                                    stdgo._internal.image.draw.Draw__drawfillover._drawFillOver(_dst0, _r?.__copy__(), _sr, _sg, _sb, _sa);
                                };
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L141"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L143"
                                stdgo._internal.image.draw.Draw__drawcopyover._drawCopyOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L144"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L146"
                                stdgo._internal.image.draw.Draw__drawnrgbaover._drawNRGBAOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L147"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L153"
                                if (stdgo._internal.image.internal.imageutil.Imageutil_drawycbcr.drawYCbCr(_dst0, _r?.__copy__(), _src0, _sp?.__copy__())) {
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L154"
                                    return;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L157"
                                stdgo._internal.image.draw.Draw__drawgray._drawGray(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L158"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L160"
                                stdgo._internal.image.draw.Draw__drawcmyk._drawCMYK(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L161"
                                return;
                            };
                        };
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mask) : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>)) : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>), _1 : false };
                        }, _mask0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L164"
                            {
                                final __type__ = _src;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>))) {
                                    var _src0:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L166"
                                    stdgo._internal.image.draw.Draw__drawglyphover._drawGlyphOver(_dst0, _r?.__copy__(), _src0, _mask0, _mp?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L167"
                                    return;
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>))) {
                                    var _src0:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L169"
                                    stdgo._internal.image.draw.Draw__drawrgbamaskover._drawRGBAMaskOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__(), _mask0, _mp?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L170"
                                    return;
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                                    var _src0:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L172"
                                    stdgo._internal.image.draw.Draw__drawgraymaskover._drawGrayMaskOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__(), _mask0, _mp?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L173"
                                    return;
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.Image_rgba64image.RGBA64Image))) {
                                    var _src0:stdgo._internal.image.Image_rgba64image.RGBA64Image = __type__ == null ? (null : stdgo._internal.image.Image_rgba64image.RGBA64Image) : cast __type__;
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L177"
                                    stdgo._internal.image.draw.Draw__drawrgba64imagemaskover._drawRGBA64ImageMaskOver(_dst0, _r?.__copy__(), _src0, _sp?.__copy__(), _mask0, _mp?.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L178"
                                    return;
                                };
                            };
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L182"
                    if (_mask == null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L183"
                        {
                            final __type__ = _src;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__().value);
                                var __tmp__ = _src0.rGBA(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L186"
                                stdgo._internal.image.draw.Draw__drawfillsrc._drawFillSrc(_dst0, _r?.__copy__(), _sr, _sg, _sb, _sa);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L187"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__().value);
                                var _d0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                                var _s0 = (_src0.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L191"
                                stdgo._internal.image.draw.Draw__drawcopysrc._drawCopySrc(((@:checkr _dst0 ?? throw "null pointer dereference").pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _dst0 ?? throw "null pointer dereference").stride, _r?.__copy__(), ((@:checkr _src0 ?? throw "null pointer dereference").pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _src0 ?? throw "null pointer dereference").stride, _sp?.__copy__(), ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt));
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L193"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L195"
                                stdgo._internal.image.draw.Draw__drawnrgbasrc._drawNRGBASrc(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L196"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L198"
                                if (stdgo._internal.image.internal.imageutil.Imageutil_drawycbcr.drawYCbCr(_dst0, _r?.__copy__(), _src0, _sp?.__copy__())) {
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L199"
                                    return;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L202"
                                stdgo._internal.image.draw.Draw__drawgray._drawGray(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L203"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>))) {
                                var _src0:stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L205"
                                stdgo._internal.image.draw.Draw__drawcmyk._drawCMYK(_dst0, _r?.__copy__(), _src0, _sp?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L206"
                                return;
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L210"
                stdgo._internal.image.draw.Draw__drawrgba._drawRGBA(_dst0, _r?.__copy__(), _src, _sp?.__copy__(), _mask, _mp?.__copy__(), _op);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L211"
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L213"
                if (((_op == (1 : stdgo._internal.image.draw.Draw_op.Op)) && (_mask == null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L214"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>), _1 : false };
                        }, _src0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _colorIndex = ((@:checkr _dst0 ?? throw "null pointer dereference").palette.index((@:checkr _src0 ?? throw "null pointer dereference").c) : stdgo.GoUInt8);
                            var _i0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                            var _i1 = (_i0 + _r.dx() : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L218"
                            {
                                var _i = (_i0 : stdgo.GoInt);
                                while ((_i < _i1 : Bool)) {
                                    (@:checkr _dst0 ?? throw "null pointer dereference").pix[(_i : stdgo.GoInt)] = _colorIndex;
                                    _i++;
                                };
                            };
                            var _firstRow = ((@:checkr _dst0 ?? throw "null pointer dereference").pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L222"
                            {
                                var _y = (_r.min.y + (1 : stdgo.GoInt) : stdgo.GoInt);
                                while ((_y < _r.max.y : Bool)) {
                                    _i0 = (_i0 + ((@:checkr _dst0 ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _dst0 ?? throw "null pointer dereference").stride) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L225"
                                    ((@:checkr _dst0 ?? throw "null pointer dereference").pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_firstRow);
                                    _y++;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L227"
                            return;
                        } else if (!stdgo._internal.image.draw.Draw__processbackward._processBackward(_dst, _r?.__copy__(), _src, _sp?.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L229"
                            stdgo._internal.image.draw.Draw__drawpaletted._drawPaletted(stdgo.Go.asInterface(_dst0), _r?.__copy__(), _src, _sp?.__copy__(), false);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L230"
                            return;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L234"
                if (((_op == (1 : stdgo._internal.image.draw.Draw_op.Op)) && (_mask == null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L235"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>)) : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>), _1 : false };
                        }, _src0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _d0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                            var _s0 = (_src0.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L238"
                            stdgo._internal.image.draw.Draw__drawcopysrc._drawCopySrc(((@:checkr _dst0 ?? throw "null pointer dereference").pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _dst0 ?? throw "null pointer dereference").stride, _r?.__copy__(), ((@:checkr _src0 ?? throw "null pointer dereference").pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _src0 ?? throw "null pointer dereference").stride, _sp?.__copy__(), ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt));
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L240"
                            return;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>))) {
                var _dst0:stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L244"
                if (((_op == (1 : stdgo._internal.image.draw.Draw_op.Op)) && (_mask == null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L245"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>)) : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>), _1 : false };
                        }, _src0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _d0 = (_dst0.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
                            var _s0 = (_src0.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L248"
                            stdgo._internal.image.draw.Draw__drawcopysrc._drawCopySrc(((@:checkr _dst0 ?? throw "null pointer dereference").pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _dst0 ?? throw "null pointer dereference").stride, _r?.__copy__(), ((@:checkr _src0 ?? throw "null pointer dereference").pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _src0 ?? throw "null pointer dereference").stride, _sp?.__copy__(), ((8 : stdgo.GoInt) * _r.dx() : stdgo.GoInt));
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L250"
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
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L257"
        if (stdgo._internal.image.draw.Draw__processbackward._processBackward(_dst, _r?.__copy__(), _src, _sp?.__copy__())) {
            {
                final __tmp__0 = (_x1 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (_x0 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__2 = (-1 : stdgo.GoInt);
                _x0 = @:binopAssign __tmp__0;
                _x1 = @:binopAssign __tmp__1;
                _dx = @:binopAssign __tmp__2;
            };
            {
                final __tmp__0 = (_y1 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (_y0 - (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__2 = (-1 : stdgo.GoInt);
                _y0 = @:binopAssign __tmp__0;
                _y1 = @:binopAssign __tmp__1;
                _dy = @:binopAssign __tmp__2;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L269"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image)) : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image), _1 : false };
            }, _dst0 = __tmp__._0, __0 = __tmp__._1;
            if (_dst0 != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L270"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.image.Image_rgba64image.RGBA64Image)) : stdgo._internal.image.Image_rgba64image.RGBA64Image), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.image.Image_rgba64image.RGBA64Image), _1 : false };
                    }, _src0 = __tmp__._0, __1 = __tmp__._1;
                    if (_src0 != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L271"
                        if (_mask == null) {
                            var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                            var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L274"
                            {
                                var _y = (_y0 : stdgo.GoInt);
                                while (_y != (_y1)) {
                                    var _sx = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
var _mx = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L277"
                                    {
                                        var _x = (_x0 : stdgo.GoInt);
                                        while (_x != (_x1)) {
                                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L278"
                                            if (_op == ((1 : stdgo._internal.image.draw.Draw_op.Op))) {
                                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L279"
                                                _dst0.setRGBA64(_x, _y, _src0.rGBA64At(_sx, _sy).__copy__());
                                            } else {
                                                var _srgba = (_src0.rGBA64At(_sx, _sy).__copy__() : stdgo._internal.image.color.Color_rgba64.RGBA64);
                                                var _a = ((65535u32 : stdgo.GoUInt32) - (_srgba.a : stdgo.GoUInt32) : stdgo.GoUInt32);
                                                var _drgba = (_dst0.rGBA64At(_x, _y).__copy__() : stdgo._internal.image.color.Color_rgba64.RGBA64);
                                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L284"
                                                _dst0.setRGBA64(_x, _y, ({ r : ((((((_drgba.r : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.r : stdgo.GoUInt16), g : ((((((_drgba.g : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.g : stdgo.GoUInt16), b : ((((((_drgba.b : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.b : stdgo.GoUInt16), a : ((((((_drgba.a : stdgo.GoUInt32) * _a : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) + _srgba.a : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                            };
                                            {
                                                final __tmp__0 = (_x + _dx : stdgo.GoInt);
                                                final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                                                final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                                                _x = @:binopAssign __tmp__0;
                                                _sx = @:binopAssign __tmp__1;
                                                _mx = @:binopAssign __tmp__2;
                                            };
                                        };
                                    };
                                    {
                                        final __tmp__0 = (_y + _dy : stdgo.GoInt);
                                        final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                                        final __tmp__2 = (_my + _dy : stdgo.GoInt);
                                        _y = @:binopAssign __tmp__0;
                                        _sy = @:binopAssign __tmp__1;
                                        _my = @:binopAssign __tmp__2;
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L293"
                            return;
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mask) : stdgo._internal.image.Image_rgba64image.RGBA64Image)) : stdgo._internal.image.Image_rgba64image.RGBA64Image), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.image.Image_rgba64image.RGBA64Image), _1 : false };
                            }, _mask0 = __tmp__._0, __2 = __tmp__._1;
                            if (_mask0 != null) {
                                var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                                var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L298"
                                {
                                    var _y = (_y0 : stdgo.GoInt);
                                    while (_y != (_y1)) {
                                        var _sx = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
var _mx = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L301"
                                        {
                                            var _x = (_x0 : stdgo.GoInt);
                                            while (_x != (_x1)) {
                                                var _ma = (_mask0.rGBA64At(_mx, _my).a : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L303"
                                                if (_ma == ((0u32 : stdgo.GoUInt32))) {
                                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L305"
                                                    if (_op == ((0 : stdgo._internal.image.draw.Draw_op.Op))) {} else {
                                                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L308"
                                                        _dst0.setRGBA64(_x, _y, (new stdgo._internal.image.color.Color_rgba64.RGBA64() : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                                    };
                                                } else if (((_ma == (65535u32 : stdgo.GoUInt32)) && (_op == (1 : stdgo._internal.image.draw.Draw_op.Op)) : Bool)) {
                                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L311"
                                                    _dst0.setRGBA64(_x, _y, _src0.rGBA64At(_sx, _sy).__copy__());
                                                } else {
                                                    var _srgba = (_src0.rGBA64At(_sx, _sy).__copy__() : stdgo._internal.image.color.Color_rgba64.RGBA64);
                                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L314"
                                                    if (_op == ((0 : stdgo._internal.image.draw.Draw_op.Op))) {
                                                        var _drgba = (_dst0.rGBA64At(_x, _y).__copy__() : stdgo._internal.image.color.Color_rgba64.RGBA64);
                                                        var _a = ((65535u32 : stdgo.GoUInt32) - ((((_srgba.a : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L317"
                                                        _dst0.setRGBA64(_x, _y, ({ r : ((((((_drgba.r : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.r : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), g : ((((((_drgba.g : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.g : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), b : ((((((_drgba.b : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.b : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), a : ((((((_drgba.a : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + ((_srgba.a : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                                    } else {
                                                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L324"
                                                        _dst0.setRGBA64(_x, _y, ({ r : ((((_srgba.r : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), g : ((((_srgba.g : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), b : ((((_srgba.b : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), a : ((((_srgba.a : stdgo.GoUInt32) * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16) } : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                                    };
                                                };
                                                {
                                                    final __tmp__0 = (_x + _dx : stdgo.GoInt);
                                                    final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                                                    final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                                                    _x = @:binopAssign __tmp__0;
                                                    _sx = @:binopAssign __tmp__1;
                                                    _mx = @:binopAssign __tmp__2;
                                                };
                                            };
                                        };
                                        {
                                            final __tmp__0 = (_y + _dy : stdgo.GoInt);
                                            final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                                            final __tmp__2 = (_my + _dy : stdgo.GoInt);
                                            _y = @:binopAssign __tmp__0;
                                            _sy = @:binopAssign __tmp__1;
                                            _my = @:binopAssign __tmp__2;
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L334"
                                return;
                            };
                        };
                    };
                };
            };
        };
        var _out:stdgo._internal.image.color.Color_rgba64.RGBA64 = ({} : stdgo._internal.image.color.Color_rgba64.RGBA64);
        var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
        var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L347"
        {
            var _y = (_y0 : stdgo.GoInt);
            while (_y != (_y1)) {
                var _sx = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
var _mx = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L350"
                {
                    var _x = (_x0 : stdgo.GoInt);
                    while (_x != (_x1)) {
                        var _ma = ((65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L352"
                        if (_mask != null) {
                            {
                                var __tmp__ = _mask.at(_mx, _my).rGBA();
                                _ma = @:tmpset0 __tmp__._3;
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L355"
                        if (_ma == ((0u32 : stdgo.GoUInt32))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L357"
                            if (_op == ((0 : stdgo._internal.image.draw.Draw_op.Op))) {} else {
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L360"
                                _dst.set(_x, _y, stdgo.Go.asInterface(stdgo._internal.image.color.Color_transparent.transparent));
                            };
                        } else if (((_ma == (65535u32 : stdgo.GoUInt32)) && (_op == (1 : stdgo._internal.image.draw.Draw_op.Op)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L363"
                            _dst.set(_x, _y, _src.at(_sx, _sy));
                        } else {
                            var __tmp__ = _src.at(_sx, _sy).rGBA(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L366"
                            if (_op == ((0 : stdgo._internal.image.draw.Draw_op.Op))) {
                                var __tmp__ = _dst.at(_x, _y).rGBA(), _dr:stdgo.GoUInt32 = __tmp__._0, _dg:stdgo.GoUInt32 = __tmp__._1, _db:stdgo.GoUInt32 = __tmp__._2, _da:stdgo.GoUInt32 = __tmp__._3;
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
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L383"
                            _dst.set(_x, _y, stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.image.color.Color_rgba64.RGBA64>)));
                        };
                        {
                            final __tmp__0 = (_x + _dx : stdgo.GoInt);
                            final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                            final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                            _x = @:binopAssign __tmp__0;
                            _sx = @:binopAssign __tmp__1;
                            _mx = @:binopAssign __tmp__2;
                        };
                    };
                };
                {
                    final __tmp__0 = (_y + _dy : stdgo.GoInt);
                    final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                    final __tmp__2 = (_my + _dy : stdgo.GoInt);
                    _y = @:binopAssign __tmp__0;
                    _sy = @:binopAssign __tmp__1;
                    _my = @:binopAssign __tmp__2;
                };
            };
        };
    }
