package stdgo._internal.image.draw;
function testPaletted(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _sName_32:stdgo.GoString = ("" : stdgo.GoString);
            var _d_29:stdgo._internal.image.draw.Draw_drawer.Drawer = (null : stdgo._internal.image.draw.Draw_drawer.Drawer);
            var _keys_5236663:stdgo.Slice<#NULL_TYPE> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _video001_24:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
            var _dst0_33:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
            var _src_31:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
            var _i_5236679 = 0i32;
            var _x_36:stdgo.GoInt = (0 : stdgo.GoInt);
            var _y_35:stdgo.GoInt = (0 : stdgo.GoInt);
            var _keys_5236704:stdgo.Slice<#NULL_TYPE> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _dName_30:stdgo.GoString = ("" : stdgo.GoString);
            var _sources_28:stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image_image.Image> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image_image.Image>);
            var _drawers_27:stdgo.GoMap<stdgo.GoString, stdgo._internal.image.draw.Draw_drawer.Drawer> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.draw.Draw_drawer.Drawer>);
            var _cgaPalette_26:stdgo._internal.image.color.Color_palette.Palette = (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette);
            var _f_22:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _dst1_34:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
            var _i_5236722 = 0i32;
            var _b_25:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
            var _err_23:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(("../testdata/video-001.png" : stdgo.GoString));
                            _f_22 = @:tmpset0 __tmp__._0;
                            _err_23 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_23 != null) {
                            _gotoNext = 5236093i32;
                        } else {
                            _gotoNext = 5236127i32;
                        };
                    } else if (__value__ == (5236093i32)) {
                        @:check2r _t.fatalf(("open: %v" : stdgo.GoString), stdgo.Go.toInterface(_err_23));
                        _gotoNext = 5236127i32;
                    } else if (__value__ == (5236127i32)) {
                        {
                            final __f__ = @:check2r _f_22.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        {
                            var __tmp__ = stdgo._internal.image.png.Png_decode.decode(stdgo.Go.asInterface(_f_22));
                            _video001_24 = @:tmpset0 __tmp__._0;
                            _err_23 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_23 != null) {
                            _gotoNext = 5236190i32;
                        } else {
                            _gotoNext = 5236226i32;
                        };
                    } else if (__value__ == (5236190i32)) {
                        @:check2r _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err_23));
                        _gotoNext = 5236226i32;
                    } else if (__value__ == (5236226i32)) {
                        _b_25 = _video001_24.bounds()?.__copy__();
                        _cgaPalette_26 = (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>(4, 4, ...[stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((85 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((255 : stdgo.GoUInt8), (85 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA))]) : stdgo._internal.image.color.Color_palette.Palette);
                        _drawers_27 = ({
                            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.image.draw.Draw_drawer.Drawer>();
                            x.__defaultValue__ = () -> (null : stdgo._internal.image.draw.Draw_drawer.Drawer);
                            x.set(("src" : stdgo.GoString), stdgo.Go.asInterface((1 : stdgo._internal.image.draw.Draw_op.Op)));
x.set(("floyd-steinberg" : stdgo.GoString), stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg);
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.draw.Draw_drawer.Drawer>);
                        _sources_28 = ({
                            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.image.Image_image.Image>();
                            x.__defaultValue__ = () -> (null : stdgo._internal.image.Image_image.Image);
                            x.set(("uniform" : stdgo.GoString), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.Image_uniform.Uniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((255 : stdgo.GoUInt8), (127 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA))) : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>)));
x.set(("video001" : stdgo.GoString), _video001_24);
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image_image.Image>);
                        _keys_5236663 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                        for (_key => _ in _drawers_27) {
                            _keys_5236663 = (_keys_5236663.__append__(_key));
                        };
                        if ((0i32 : stdgo.GoInt) < (_drawers_27.length)) {
                            _gotoNext = 5237199i32;
                        } else {
                            _gotoNext = 5237202i32;
                        };
                    } else if (__value__ == (5236679i32)) {
                        _i_5236679++;
                        _gotoNext = 5237200i32;
                    } else if (__value__ == (5236693i32)) {
                        _d_29 = (_drawers_27[_keys_5236663[@:invalid_index_invalid_type _i_5236679]] ?? (null : stdgo._internal.image.draw.Draw_drawer.Drawer));
                        _dName_30 = _keys_5236663[@:invalid_index_invalid_type _i_5236679]?.__copy__();
                        _gotoNext = 5236696i32;
                    } else if (__value__ == (5236696i32)) {
                        _keys_5236704 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                        for (_key => _ in _sources_28) {
                            _keys_5236704 = (_keys_5236704.__append__(_key));
                        };
                        if ((0i32 : stdgo.GoInt) < (_sources_28.length)) {
                            _gotoNext = 5237196i32;
                        } else {
                            _gotoNext = 5236679i32;
                        };
                    } else if (__value__ == (5236722i32)) {
                        _i_5236722++;
                        _gotoNext = 5237197i32;
                    } else if (__value__ == (5236736i32)) {
                        _src_31 = (_sources_28[_keys_5236704[@:invalid_index_invalid_type _i_5236722]] ?? (null : stdgo._internal.image.Image_image.Image));
                        _sName_32 = _keys_5236704[@:invalid_index_invalid_type _i_5236722]?.__copy__();
                        _dst0_33 = stdgo._internal.image.Image_newpaletted.newPaletted(_b_25?.__copy__(), _cgaPalette_26);
                        _dst1_34 = stdgo._internal.image.Image_newpaletted.newPaletted(_b_25?.__copy__(), _cgaPalette_26);
                        _d_29.draw(stdgo.Go.asInterface(_dst0_33), _b_25?.__copy__(), _src_31, (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point));
                        _d_29.draw(stdgo.Go.asInterface((new stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted(_dst1_34) : stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted)), _b_25?.__copy__(), _src_31, (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point));
                        _y_35 = _b_25.min.y;
                        _gotoNext = 5236925i32;
                    } else if (__value__ == (5236925i32)) {
                        if ((_y_35 < _b_25.max.y : Bool)) {
                            _gotoNext = 5236960i32;
                        } else {
                            _gotoNext = 5236722i32;
                        };
                    } else if (__value__ == (5236956i32)) {
                        _y_35++;
                        _gotoNext = 5236925i32;
                    } else if (__value__ == (5236960i32)) {
                        _x_36 = _b_25.min.x;
                        _gotoNext = 5236966i32;
                    } else if (__value__ == (5236966i32)) {
                        if ((_x_36 < _b_25.max.x : Bool)) {
                            _gotoNext = 5237001i32;
                        } else {
                            _gotoNext = 5236956i32;
                        };
                    } else if (__value__ == (5236997i32)) {
                        _x_36++;
                        _gotoNext = 5236966i32;
                    } else if (__value__ == (5237001i32)) {
                        if (!stdgo._internal.image.draw.Draw__eq._eq(@:check2r _dst0_33.at(_x_36, _y_35), @:check2r _dst1_34.at(_x_36, _y_35))) {
                            _gotoNext = 5237045i32;
                        } else {
                            _gotoNext = 5236997i32;
                        };
                    } else if (__value__ == (5237045i32)) {
                        @:check2r _t.errorf(("%s / %s: at (%d, %d), %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(_dName_30), stdgo.Go.toInterface(_sName_32), stdgo.Go.toInterface(_x_36), stdgo.Go.toInterface(_y_35), stdgo.Go.toInterface(@:check2r _dst0_33.at(_x_36, _y_35)), stdgo.Go.toInterface(@:check2r _dst1_34.at(_x_36, _y_35)));
                        _i_5236722++;
                        _gotoNext = 5237197i32;
                    } else if (__value__ == (5237196i32)) {
                        _i_5236722 = 0i32;
                        _gotoNext = 5237197i32;
                    } else if (__value__ == (5237197i32)) {
                        if (_i_5236722 < (_keys_5236704.length)) {
                            _gotoNext = 5236736i32;
                        } else {
                            _gotoNext = 5236679i32;
                        };
                    } else if (__value__ == (5237199i32)) {
                        _i_5236679 = 0i32;
                        _gotoNext = 5237200i32;
                    } else if (__value__ == (5237200i32)) {
                        if (_i_5236679 < (_keys_5236663.length)) {
                            _gotoNext = 5236693i32;
                        } else {
                            _gotoNext = 5237202i32;
                        };
                    } else if (__value__ == (5237202i32)) {
                        _gotoNext = -1i32;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
