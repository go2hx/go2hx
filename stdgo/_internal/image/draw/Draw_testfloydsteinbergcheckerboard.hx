package stdgo._internal.image.draw;
function testFloydSteinbergCheckerboard(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (640 : stdgo.GoInt), (480 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _src = (stdgo.Go.setRef((new stdgo._internal.image.Image_uniform.Uniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_gray16.Gray16((32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_gray16.Gray16))) : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
        var _dst = stdgo._internal.image.Image_newpaletted.newPaletted(_b?.__copy__(), (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>(2, 2, ...[stdgo.Go.asInterface(stdgo._internal.image.color.Color_black.black), stdgo.Go.asInterface(stdgo._internal.image.color.Color_white.white)]) : stdgo._internal.image.color.Color_palette.Palette));
        stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg.draw(stdgo.Go.asInterface(_dst), _b?.__copy__(), stdgo.Go.asInterface(_src), (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point));
        var _nErr = (0 : stdgo.GoInt);
        {
            var _y = (_b.min.y : stdgo.GoInt);
            while ((_y < _b.max.y : Bool)) {
                {
                    var _x = (_b.min.x : stdgo.GoInt);
                    while ((_x < _b.max.x : Bool)) {
                        var _got = ((@:checkr _dst ?? throw "null pointer dereference").pix[(@:check2r _dst.pixOffset(_x, _y) : stdgo.GoInt)] : stdgo.GoUInt8);
var _want = (((_x + _y : stdgo.GoInt) : stdgo.GoUInt8) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8);
if (_got != (_want)) {
                            @:check2r _t.errorf(("at (%d, %d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            {
                                _nErr++;
                                if (_nErr == ((10 : stdgo.GoInt))) {
                                    @:check2r _t.fatal(stdgo.Go.toInterface(("there may be more errors" : stdgo.GoString)));
                                };
                            };
                        };
                        _x++;
                    };
                };
                _y++;
            };
        };
    }
