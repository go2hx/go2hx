package stdgo._internal.image.draw;
function testFill(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _rr = (new stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>(13, 13, ...[
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (40 : stdgo.GoInt), (30 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (40 : stdgo.GoInt), (30 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (20 : stdgo.GoInt), (40 : stdgo.GoInt), (30 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (20 : stdgo.GoInt), (40 : stdgo.GoInt), (30 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (20 : stdgo.GoInt), (15 : stdgo.GoInt), (25 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (35 : stdgo.GoInt), (30 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (15 : stdgo.GoInt), (40 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((24 : stdgo.GoInt), (24 : stdgo.GoInt), (25 : stdgo.GoInt), (25 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((23 : stdgo.GoInt), (23 : stdgo.GoInt), (26 : stdgo.GoInt), (26 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((22 : stdgo.GoInt), (22 : stdgo.GoInt), (27 : stdgo.GoInt), (27 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((21 : stdgo.GoInt), (21 : stdgo.GoInt), (28 : stdgo.GoInt), (28 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (29 : stdgo.GoInt), (29 : stdgo.GoInt))?.__copy__()].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L581"
        for (__0 => _r in _rr) {
            var _m = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (40 : stdgo.GoInt), (30 : stdgo.GoInt))?.__copy__()).subImage(_r?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
            var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
            var _c = (new stdgo._internal.image.color.Color_rgba.RGBA((11 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA);
            var _src = (stdgo.Go.setRef(({ c : stdgo.Go.asInterface(_c) } : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
            var _check = (function(_desc:stdgo.GoString):Void {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L587"
                {
                    var _y = (_b.min.y : stdgo.GoInt);
                    while ((_y < _b.max.y : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L588"
                        {
                            var _x = (_b.min.x : stdgo.GoInt);
                            while ((_x < _b.max.x : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L589"
                                if (!stdgo._internal.image.draw.Draw__eq._eq(stdgo.Go.asInterface(_c), _m.at(_x, _y))) {
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L590"
                                    _t.errorf(("%s fill: at (%d, %d), sub-image bounds=%v: want %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)), stdgo.Go.toInterface(_m.at(_x, _y)));
                                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L591"
                                    return;
                                };
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
            } : stdgo.GoString -> Void);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L597"
            {
                var _y = (_b.min.y : stdgo.GoInt);
                while ((_y < _b.max.y : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L598"
                    {
                        var _x = (_b.min.x : stdgo.GoInt);
                        while ((_x < _b.max.x : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L599"
                            stdgo._internal.image.draw.Draw_drawmask.drawMask(stdgo.Go.asInterface(_m), stdgo._internal.image.Image_rect.rect(_x, _y, (_x + (1 : stdgo.GoInt) : stdgo.GoInt), (_y + (1 : stdgo.GoInt) : stdgo.GoInt)).__copy__(), stdgo.Go.asInterface(_src), stdgo._internal.image.Image_zp.zP.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP.__copy__(), (1 : stdgo._internal.image.draw.Draw_op.Op));
                            _x++;
                        };
                    };
                    _y++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L602"
            _check(("pixel" : stdgo.GoString));
            _c = (new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (22 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA);
            _src = (stdgo.Go.setRef(({ c : stdgo.Go.asInterface(_c) } : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L606"
            {
                var _y = (_b.min.y : stdgo.GoInt);
                while ((_y < _b.max.y : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L607"
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(stdgo.Go.asInterface(_m), stdgo._internal.image.Image_rect.rect(_b.min.x, _y, _b.max.x, (_y + (1 : stdgo.GoInt) : stdgo.GoInt)).__copy__(), stdgo.Go.asInterface(_src), stdgo._internal.image.Image_zp.zP.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP.__copy__(), (1 : stdgo._internal.image.draw.Draw_op.Op));
                    _y++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L609"
            _check(("row" : stdgo.GoString));
            _c = (new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (33 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA);
            _src = (stdgo.Go.setRef(({ c : stdgo.Go.asInterface(_c) } : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L613"
            {
                var _x = (_b.min.x : stdgo.GoInt);
                while ((_x < _b.max.x : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L614"
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(stdgo.Go.asInterface(_m), stdgo._internal.image.Image_rect.rect(_x, _b.min.y, (_x + (1 : stdgo.GoInt) : stdgo.GoInt), _b.max.y).__copy__(), stdgo.Go.asInterface(_src), stdgo._internal.image.Image_zp.zP.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP.__copy__(), (1 : stdgo._internal.image.draw.Draw_op.Op));
                    _x++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L616"
            _check(("column" : stdgo.GoString));
            _c = (new stdgo._internal.image.color.Color_rgba.RGBA((44 : stdgo.GoUInt8), (55 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (77 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA);
            _src = (stdgo.Go.setRef(({ c : stdgo.Go.asInterface(_c) } : stdgo._internal.image.Image_uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L620"
            stdgo._internal.image.draw.Draw_drawmask.drawMask(stdgo.Go.asInterface(_m), _b?.__copy__(), stdgo.Go.asInterface(_src), stdgo._internal.image.Image_zp.zP?.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP?.__copy__(), (1 : stdgo._internal.image.draw.Draw_op.Op));
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L621"
            _check(("whole" : stdgo.GoString));
        };
    }
