package stdgo._internal.image.draw;
function testPaletted(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _y_35:stdgo.GoInt = (0 : stdgo.GoInt);
            var _dst1_34:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
            var _iterator_5119056 = 0i64;
            var _sources_28:stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image_image.Image> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image_image.Image>);
            var _err_23:stdgo.Error = (null : stdgo.Error);
            var _x_36:stdgo.GoInt = (0 : stdgo.GoInt);
            var _sName_32:stdgo.GoString = ("" : stdgo.GoString);
            var _src_31:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
            var _iterator_5119099 = 0i64;
            var _d_29:stdgo._internal.image.draw.Draw_drawer.Drawer = (null : stdgo._internal.image.draw.Draw_drawer.Drawer);
            var _cgaPalette_26:stdgo._internal.image.color.Color_palette.Palette = (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette);
            var _dst0_33:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
            var _keys_5119040:stdgo.Slice<Dynamic> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _b_25:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
            var _video001_24:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
            var _keys_5119081:stdgo.Slice<Dynamic> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _dName_30:stdgo.GoString = ("" : stdgo.GoString);
            var _drawers_27:stdgo.GoMap<stdgo.GoString, stdgo._internal.image.draw.Draw_drawer.Drawer> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.draw.Draw_drawer.Drawer>);
            var _f_22:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _gotoNext = 0i64;
            _gotoNext == ((0i64 : stdgo.GoInt));
            //"file://#L0"
            while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
                //"file://#L0"
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i64)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(("../testdata/video-001.png" : stdgo.GoString));
                            _f_22 = @:tmpset0 __tmp__._0;
                            _err_23 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L723"
                        if (_err_23 != null) {
                            _gotoNext = 5118470i64;
                        } else {
                            _gotoNext = 5118504i64;
                        };
                    } else if (__value__ == (5118470i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L724"
                        _t.fatalf(("open: %v" : stdgo.GoString), stdgo.Go.toInterface(_err_23));
                        _gotoNext = 5118504i64;
                    } else if (__value__ == (5118504i64)) {
                        {
                            final __f__ = _f_22.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        {
                            var __tmp__ = stdgo._internal.image.png.Png_decode.decode(stdgo.Go.asInterface(_f_22));
                            _video001_24 = @:tmpset0 __tmp__._0;
                            _err_23 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L728"
                        if (_err_23 != null) {
                            _gotoNext = 5118567i64;
                        } else {
                            _gotoNext = 5118603i64;
                        };
                    } else if (__value__ == (5118567i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L729"
                        _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err_23));
                        _gotoNext = 5118603i64;
                    } else if (__value__ == (5118603i64)) {
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
                        _keys_5119040 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L748"
                        for (_key => _ in _drawers_27) {
                            _keys_5119040 = _keys_5119040.__append__(_key);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L748"
                        if ((0i64 : stdgo.GoInt) < (_drawers_27.length)) {
                            _gotoNext = 5119576i64;
                        } else {
                            _gotoNext = 5119579i64;
                        };
                    } else if (__value__ == (5119056i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L748"
                        _iterator_5119056++;
                        _gotoNext = 5119577i64;
                    } else if (__value__ == (5119070i64)) {
                        _d_29 = (_drawers_27[_keys_5119040[@:invalid_index_invalid_type _iterator_5119056]] ?? (null : stdgo._internal.image.draw.Draw_drawer.Drawer));
                        _dName_30 = _keys_5119040[@:invalid_index_invalid_type _iterator_5119056]?.__copy__();
                        _gotoNext = 5119073i64;
                    } else if (__value__ == (5119073i64)) {
                        _keys_5119081 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L750"
                        for (_key => _ in _sources_28) {
                            _keys_5119081 = _keys_5119081.__append__(_key);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L750"
                        if ((0i64 : stdgo.GoInt) < (_sources_28.length)) {
                            _gotoNext = 5119573i64;
                        } else {
                            _gotoNext = 5119056i64;
                        };
                    } else if (__value__ == (5119099i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L750"
                        _iterator_5119099++;
                        _gotoNext = 5119574i64;
                    } else if (__value__ == (5119113i64)) {
                        _src_31 = (_sources_28[_keys_5119081[@:invalid_index_invalid_type _iterator_5119099]] ?? (null : stdgo._internal.image.Image_image.Image));
                        _sName_32 = _keys_5119081[@:invalid_index_invalid_type _iterator_5119099]?.__copy__();
                        _dst0_33 = stdgo._internal.image.Image_newpaletted.newPaletted(_b_25?.__copy__(), _cgaPalette_26);
                        _dst1_34 = stdgo._internal.image.Image_newpaletted.newPaletted(_b_25?.__copy__(), _cgaPalette_26);
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L753"
                        _d_29.draw(stdgo.Go.asInterface(_dst0_33), _b_25?.__copy__(), _src_31, (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point));
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L754"
                        _d_29.draw(stdgo.Go.asInterface((new stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted(_dst1_34) : stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted)), _b_25?.__copy__(), _src_31, (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point));
                        _y_35 = _b_25.min.y;
                        _gotoNext = 5119302i64;
                    } else if (__value__ == (5119302i64)) {
                        //"file://#L0"
                        if ((_y_35 < _b_25.max.y : Bool)) {
                            _gotoNext = 5119337i64;
                        } else {
                            _gotoNext = 5119099i64;
                        };
                    } else if (__value__ == (5119333i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L755"
                        _y_35++;
                        _gotoNext = 5119302i64;
                    } else if (__value__ == (5119337i64)) {
                        _x_36 = _b_25.min.x;
                        _gotoNext = 5119343i64;
                    } else if (__value__ == (5119343i64)) {
                        //"file://#L0"
                        if ((_x_36 < _b_25.max.x : Bool)) {
                            _gotoNext = 5119378i64;
                        } else {
                            _gotoNext = 5119333i64;
                        };
                    } else if (__value__ == (5119374i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L756"
                        _x_36++;
                        _gotoNext = 5119343i64;
                    } else if (__value__ == (5119378i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L757"
                        if (!stdgo._internal.image.draw.Draw__eq._eq(_dst0_33.at(_x_36, _y_35), _dst1_34.at(_x_36, _y_35))) {
                            _gotoNext = 5119422i64;
                        } else {
                            _gotoNext = 5119374i64;
                        };
                    } else if (__value__ == (5119422i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L758"
                        _t.errorf(("%s / %s: at (%d, %d), %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(_dName_30), stdgo.Go.toInterface(_sName_32), stdgo.Go.toInterface(_x_36), stdgo.Go.toInterface(_y_35), stdgo.Go.toInterface(_dst0_33.at(_x_36, _y_35)), stdgo.Go.toInterface(_dst1_34.at(_x_36, _y_35)));
                        //"file://#L0"
                        _iterator_5119099++;
                        _gotoNext = 5119574i64;
                    } else if (__value__ == (5119573i64)) {
                        _iterator_5119099 = 0i64;
                        _gotoNext = 5119574i64;
                    } else if (__value__ == (5119574i64)) {
                        //"file://#L0"
                        if (_iterator_5119099 < (_keys_5119081.length)) {
                            _gotoNext = 5119113i64;
                        } else {
                            _gotoNext = 5119056i64;
                        };
                    } else if (__value__ == (5119576i64)) {
                        _iterator_5119056 = 0i64;
                        _gotoNext = 5119577i64;
                    } else if (__value__ == (5119577i64)) {
                        //"file://#L0"
                        if (_iterator_5119056 < (_keys_5119040.length)) {
                            _gotoNext = 5119070i64;
                        } else {
                            _gotoNext = 5119579i64;
                        };
                    } else if (__value__ == (5119579i64)) {
                        _gotoNext = -1i64;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
