package _internal.image_test;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.gif.Gif;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.png.Png;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            var _rgba = (function(_c:stdgo._internal.image.color.Color_Color.Color):stdgo.GoString {
                var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("rgba = 0x%04x, 0x%04x, 0x%04x, 0x%04x for %T%v" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c))?.__copy__();
            } : stdgo._internal.image.color.Color_Color.Color -> stdgo.GoString);
            var _golden = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.image.Image_Image.Image>();
                x.__defaultValue__ = () -> (null : stdgo._internal.image.Image_Image.Image);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image_Image.Image>);
            @:label("loop") for (__0 => _it in _internal.image_test.Image_test__imageTests._imageTests) {
                var _g = (_golden[_it._goldenFilename] ?? (null : stdgo._internal.image.Image_Image.Image) : stdgo._internal.image.Image_Image.Image);
                if (_g == null) {
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _internal.image_test.Image_test__decode._decode(_it._goldenFilename?.__copy__());
                        _g = __tmp__._0;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        _t.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_it._goldenFilename), stdgo.Go.toInterface(_err));
                        @:jump("loop") continue;
                    };
                    _golden[_it._goldenFilename] = _g;
                };
                var __tmp__ = _internal.image_test.Image_test__decode._decode(_it._filename?.__copy__()), _m:stdgo._internal.image.Image_Image.Image = __tmp__._0, _imageFormat:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(_err));
                    @:jump("loop") continue;
                };
                var _b = (_g.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
                if (!_b.eq(_m.bounds()?.__copy__())) {
                    _t.errorf(("%s: got bounds %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
                    @:jump("loop") continue;
                };
                {
                    var _y = (_b.min.y : stdgo.GoInt);
                    stdgo.Go.cfor((_y < _b.max.y : Bool), _y++, {
                        {
                            var _x = (_b.min.x : stdgo.GoInt);
                            stdgo.Go.cfor((_x < _b.max.x : Bool), _x++, {
                                if (!_internal.image_test.Image_test__withinTolerance._withinTolerance(_g.at(_x, _y), _m.at(_x, _y), _it._tolerance)) {
                                    _t.errorf(("%s: at (%d, %d):\ngot  %v\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_rgba(_m.at(_x, _y))), stdgo.Go.toInterface(_rgba(_g.at(_x, _y))));
                                    @:jump("loop") continue;
                                };
                            });
                        };
                    });
                };
                if (_imageFormat == (("gif" : stdgo.GoString))) {
                    continue;
                };
                var __tmp__ = _internal.image_test.Image_test__decodeConfig._decodeConfig(_it._filename?.__copy__()), _c:stdgo._internal.image.Image_Config.Config = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(_err));
                    @:jump("loop") continue;
                };
                if (stdgo.Go.toInterface(_m.colorModel()) != (stdgo.Go.toInterface(_c.colorModel))) {
                    _t.errorf(("%s: color models differ" : stdgo.GoString), stdgo.Go.toInterface(_it._filename));
                    @:jump("loop") continue;
                };
            };
        });
    }
