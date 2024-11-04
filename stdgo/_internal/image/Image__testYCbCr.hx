package stdgo._internal.image;
function _testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _subsampleRatio:stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio, _delta:stdgo._internal.image.Image_Point.Point):Void {
        var _r1 = (_r.add(_delta?.__copy__())?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _m = stdgo._internal.image.Image_newYCbCr.newYCbCr(_r1?.__copy__(), _subsampleRatio);
        if (((_m.y.length) > (10000 : stdgo.GoInt) : Bool)) {
            _t.errorf(("r=%v, subsampleRatio=%v, delta=%v: image buffer is too large" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)));
            return;
        };
        {
            var _y = (_r1.min.y : stdgo.GoInt);
            while ((_y < _r1.max.y : Bool)) {
                {
                    var _x = (_r1.min.x : stdgo.GoInt);
                    while ((_x < _r1.max.x : Bool)) {
                        var _yi = (_m.yoffset(_x, _y) : stdgo.GoInt);
var _ci = (_m.coffset(_x, _y) : stdgo.GoInt);
_m.y[(_yi : stdgo.GoInt)] = ((((16 : stdgo.GoInt) * _y : stdgo.GoInt) + _x : stdgo.GoInt) : stdgo.GoUInt8);
_m.cb[(_ci : stdgo.GoInt)] = ((_y + ((16 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
_m.cr[(_ci : stdgo.GoInt)] = ((_y + ((16 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
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
                                        var _subRect = (stdgo._internal.image.Image_rect.rect(_x0, _y0, _x1, _y1).__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
var _sub = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(_subRect.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>)) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>);
{
                                            var _y = (_sub.rect.min.y : stdgo.GoInt);
                                            while ((_y < _sub.rect.max.y : Bool)) {
                                                {
                                                    var _x = (_sub.rect.min.x : stdgo.GoInt);
                                                    while ((_x < _sub.rect.max.x : Bool)) {
                                                        var _color0 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.at(_x, _y)) : stdgo._internal.image.color.Color_YCbCr.YCbCr)) : stdgo._internal.image.color.Color_YCbCr.YCbCr).__copy__() : stdgo._internal.image.color.Color_YCbCr.YCbCr);
var _color1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_sub.at(_x, _y)) : stdgo._internal.image.color.Color_YCbCr.YCbCr)) : stdgo._internal.image.color.Color_YCbCr.YCbCr).__copy__() : stdgo._internal.image.color.Color_YCbCr.YCbCr);
if (stdgo.Go.toInterface(_color0) != stdgo.Go.toInterface(_color1)) {
                                                            _t.errorf(("r=%v, subsampleRatio=%v, delta=%v, x=%d, y=%d, color0=%v, color1=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_subsampleRatio)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_color0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_color1)));
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
