package stdgo._internal.image;
function _testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _r:stdgo._internal.image.Image_rectangle.Rectangle, _subsampleRatio:stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio, _delta:stdgo._internal.image.Image_point.Point):Void {
        var _r1 = (_r.add(_delta?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _m = stdgo._internal.image.Image_newycbcr.newYCbCr(_r1?.__copy__(), _subsampleRatio);
        if ((((@:checkr _m ?? throw "null pointer dereference").y.length) > (10000 : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("r=%v, subsampleRatio=%v, delta=%v: image buffer is too large" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)));
            return;
        };
        {
            var _y = (_r1.min.y : stdgo.GoInt);
            while ((_y < _r1.max.y : Bool)) {
                {
                    var _x = (_r1.min.x : stdgo.GoInt);
                    while ((_x < _r1.max.x : Bool)) {
                        var _yi = (@:check2r _m.yOffset(_x, _y) : stdgo.GoInt);
var _ci = (@:check2r _m.cOffset(_x, _y) : stdgo.GoInt);
(@:checkr _m ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)] = ((((16 : stdgo.GoInt) * _y : stdgo.GoInt) + _x : stdgo.GoInt) : stdgo.GoUInt8);
(@:checkr _m ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)] = ((_y + ((16 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
(@:checkr _m ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)] = ((_y + ((16 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _x++;
                    };
                };
                _y++;
            };
        };
        {
            var _y0 = (_delta.y + (3 : stdgo.GoInt) : stdgo.GoInt);
            while ((_y0 < (_delta.y + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                {
                    var _y1 = (_delta.y + (8 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_y1 < (_delta.y + (13 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        {
                            var _x0 = (_delta.x + (3 : stdgo.GoInt) : stdgo.GoInt);
                            while ((_x0 < (_delta.x + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                {
                                    var _x1 = (_delta.x + (8 : stdgo.GoInt) : stdgo.GoInt);
                                    while ((_x1 < (_delta.x + (13 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                        var _subRect = (stdgo._internal.image.Image_rect.rect(_x0, _y0, _x1, _y1).__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
var _sub = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _m.subImage(_subRect.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>)) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
{
                                            var _y = ((@:checkr _sub ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
                                            while ((_y < (@:checkr _sub ?? throw "null pointer dereference").rect.max.y : Bool)) {
                                                {
                                                    var _x = ((@:checkr _sub ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt);
                                                    while ((_x < (@:checkr _sub ?? throw "null pointer dereference").rect.max.x : Bool)) {
                                                        var _color0 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _m.at(_x, _y)) : stdgo._internal.image.color.Color_ycbcr.YCbCr)) : stdgo._internal.image.color.Color_ycbcr.YCbCr).__copy__() : stdgo._internal.image.color.Color_ycbcr.YCbCr);
var _color1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _sub.at(_x, _y)) : stdgo._internal.image.color.Color_ycbcr.YCbCr)) : stdgo._internal.image.color.Color_ycbcr.YCbCr).__copy__() : stdgo._internal.image.color.Color_ycbcr.YCbCr);
if (stdgo.Go.toInterface(_color0) != stdgo.Go.toInterface(_color1)) {
                                                            @:check2r _t.errorf(("r=%v, subsampleRatio=%v, delta=%v, x=%d, y=%d, color0=%v, color1=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_color0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_color1)));
                                                            return;
                                                        };
                                                        _x++;
                                                    };
                                                };
                                                _y++;
                                            };
                                        };
                                        _x1++;
                                    };
                                };
                                _x0++;
                            };
                        };
                        _y1++;
                    };
                };
                _y0++;
            };
        };
    }
