package stdgo._internal.image.draw;
function _bench(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _dcm:stdgo._internal.image.color.Color_model.Model, _scm:stdgo._internal.image.color.Color_model.Model, _mcm:stdgo._internal.image.color.Color_model.Model, _op:stdgo._internal.image.draw.Draw_op.Op):Void {
        @:check2r _b.stopTimer();
        var _dst:stdgo._internal.image.draw.Draw_image.Image = (null : stdgo._internal.image.draw.Draw_image.Image);
        {
            final __value__ = _dcm;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgbamodel.rGBAModel))) {
                var _dst1 = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (640 : stdgo.GoInt), (480 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (480 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (640 : stdgo.GoInt) : Bool)) {
                                @:check2r _dst1.setRGBA(_x, _y, (new stdgo._internal.image.color.Color_rgba.RGBA(((((5 : stdgo.GoInt) * _x : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((7 : stdgo.GoInt) * _y : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((((7 : stdgo.GoInt) * _x : stdgo.GoInt) + ((5 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _dst = stdgo.Go.asInterface(_dst1);
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgba64model.rGBA64Model))) {
                var _dst1 = stdgo._internal.image.Image_newrgba64.newRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (640 : stdgo.GoInt), (480 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (480 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (640 : stdgo.GoInt) : Bool)) {
                                @:check2r _dst1.setRGBA64(_x, _y, (new stdgo._internal.image.color.Color_rgba64.RGBA64(((((53 : stdgo.GoInt) * _x : stdgo.GoInt) % (65536 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), ((((59 : stdgo.GoInt) * _y : stdgo.GoInt) % (65536 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), ((((((59 : stdgo.GoInt) * _x : stdgo.GoInt) + ((53 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (65536 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _dst = stdgo.Go.asInterface(_dst1);
            } else {
                if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_dcm), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__palette._palette)))) {
                    var _dst1 = stdgo._internal.image.Image_newpaletted.newPaletted(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (640 : stdgo.GoInt), (480 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.draw.Draw__palette._palette);
                    {
                        var _y = (0 : stdgo.GoInt);
                        while ((_y < (480 : stdgo.GoInt) : Bool)) {
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < (640 : stdgo.GoInt) : Bool)) {
                                    @:check2r _dst1.setColorIndex(_x, _y, (((_x ^ _y : stdgo.GoInt) : stdgo.GoUInt8) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8));
                                    _x++;
                                };
                            };
                            _y++;
                        };
                    };
                    _dst = stdgo.Go.asInterface(_dst1);
                } else {
                    @:check2r _b.fatal(stdgo.Go.toInterface(("unknown destination color model" : stdgo.GoString)), stdgo.Go.toInterface(_dcm));
                };
            };
        };
        var _src:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        {
            final __value__ = _scm;
            if (__value__ == null) {
                _src = stdgo.Go.asInterface((stdgo.Go.setRef(({ c : stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((17 : stdgo.GoUInt8), (34 : stdgo.GoUInt8), (51 : stdgo.GoUInt8), (68 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)) } : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>));
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_cmykmodel.cMYKModel))) {
                var _src1 = stdgo._internal.image.Image_newcmyk.newCMYK(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (300 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (400 : stdgo.GoInt) : Bool)) {
                                @:check2r _src1.setCMYK(_x, _y, (new stdgo._internal.image.color.Color_cmyk.CMYK(((((13 : stdgo.GoInt) * _x : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((11 : stdgo.GoInt) * _y : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((((11 : stdgo.GoInt) * _x : stdgo.GoInt) + ((13 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((((31 : stdgo.GoInt) * _x : stdgo.GoInt) + ((37 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_cmyk.CMYK));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _src = stdgo.Go.asInterface(_src1);
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_graymodel.grayModel))) {
                var _src1 = stdgo._internal.image.Image_newgray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (300 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (400 : stdgo.GoInt) : Bool)) {
                                @:check2r _src1.setGray(_x, _y, (new stdgo._internal.image.color.Color_gray.Gray(((((((11 : stdgo.GoInt) * _x : stdgo.GoInt) + ((13 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _src = stdgo.Go.asInterface(_src1);
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgbamodel.rGBAModel))) {
                var _src1 = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (300 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (400 : stdgo.GoInt) : Bool)) {
                                @:check2r _src1.setRGBA(_x, _y, (new stdgo._internal.image.color.Color_rgba.RGBA(((((13 : stdgo.GoInt) * _x : stdgo.GoInt) % (128 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((11 : stdgo.GoInt) * _y : stdgo.GoInt) % (128 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((((11 : stdgo.GoInt) * _x : stdgo.GoInt) + ((13 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (128 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _src = stdgo.Go.asInterface(_src1);
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgba64model.rGBA64Model))) {
                var _src1 = stdgo._internal.image.Image_newrgba64.newRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (300 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (400 : stdgo.GoInt) : Bool)) {
                                @:check2r _src1.setRGBA64(_x, _y, (new stdgo._internal.image.color.Color_rgba64.RGBA64(((((103 : stdgo.GoInt) * _x : stdgo.GoInt) % (32768 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), ((((101 : stdgo.GoInt) * _y : stdgo.GoInt) % (32768 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), ((((((101 : stdgo.GoInt) * _x : stdgo.GoInt) + ((103 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (32768 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _src = stdgo.Go.asInterface(_src1);
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel))) {
                var _src1 = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (300 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (400 : stdgo.GoInt) : Bool)) {
                                @:check2r _src1.setNRGBA(_x, _y, (new stdgo._internal.image.color.Color_nrgba.NRGBA(((((13 : stdgo.GoInt) * _x : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((11 : stdgo.GoInt) * _y : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), ((((((11 : stdgo.GoInt) * _x : stdgo.GoInt) + ((13 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA));
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _src = stdgo.Go.asInterface(_src1);
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel))) {
                var _yy = (new stdgo.Slice<stdgo.GoUInt8>((120000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var _cb = (new stdgo.Slice<stdgo.GoUInt8>((120000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var _cr = (new stdgo.Slice<stdgo.GoUInt8>((120000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _yy) {
                    _yy[(_i : stdgo.GoInt)] = ((((3 : stdgo.GoInt) * _i : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                    _cb[(_i : stdgo.GoInt)] = ((((5 : stdgo.GoInt) * _i : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                    _cr[(_i : stdgo.GoInt)] = ((((7 : stdgo.GoInt) * _i : stdgo.GoInt) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                };
                _src = stdgo.Go.asInterface((stdgo.Go.setRef(({ y : _yy, cb : _cb, cr : _cr, yStride : (400 : stdgo.GoInt), cStride : (400 : stdgo.GoInt), subsampleRatio : (0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), rect : stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__() } : stdgo._internal.image.Image_ycbcr.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>));
            } else {
                @:check2r _b.fatal(stdgo.Go.toInterface(("unknown source color model" : stdgo.GoString)), stdgo.Go.toInterface(_scm));
            };
        };
        var _mask:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        {
            final __value__ = _mcm;
            if (__value__ == null) {} else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_alphamodel.alphaModel))) {
                var _mask1 = stdgo._internal.image.Image_newalpha.newAlpha(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (400 : stdgo.GoInt), (300 : stdgo.GoInt))?.__copy__());
                {
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (300 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (400 : stdgo.GoInt) : Bool)) {
                                var _a = ((((((23 : stdgo.GoInt) * _x : stdgo.GoInt) + ((29 : stdgo.GoInt) * _y : stdgo.GoInt) : stdgo.GoInt)) % (256 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
if ((_a >= (192 : stdgo.GoUInt8) : Bool)) {
                                    @:check2r _mask1.setAlpha(_x, _y, (new stdgo._internal.image.color.Color_alpha.Alpha(_a) : stdgo._internal.image.color.Color_alpha.Alpha));
                                };
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _mask = stdgo.Go.asInterface(_mask1);
            } else {
                @:check2r _b.fatal(stdgo.Go.toInterface(("unknown mask color model" : stdgo.GoString)), stdgo.Go.toInterface(_mcm));
            };
        };
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _x = (((3 : stdgo.GoInt) * _i : stdgo.GoInt) % (240 : stdgo.GoInt) : stdgo.GoInt);
var _y = (((7 : stdgo.GoInt) * _i : stdgo.GoInt) % (180 : stdgo.GoInt) : stdgo.GoInt);
stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst, _dst.bounds().add(stdgo._internal.image.Image_pt.pt(_x, _y).__copy__()).__copy__(), _src, stdgo._internal.image.Image_zp.zP.__copy__(), _mask, stdgo._internal.image.Image_zp.zP.__copy__(), _op);
                _i++;
            };
        };
    }
