package stdgo._internal.image.internal.imageutil;
function drawYCbCr(_dst:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _sp:stdgo._internal.image.Image_point.Point):Bool {
        var _ok = false;
        var _x0 = (((_r.min.x - (@:checkr _dst ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _x1 = (((_r.max.x - (@:checkr _dst ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _y0 = (_r.min.y - (@:checkr _dst ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
        var _y1 = (_r.max.y - (@:checkr _dst ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
        {
            final __value__ = (@:checkr _src ?? throw "null pointer dereference").subsampleRatio;
            if (__value__ == ((0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    while (_y != (_y1)) {
                        var _dpix = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__((_y * (@:checkr _dst ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _yi = ((((_sy - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").yStride : stdgo.GoInt) + ((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
var _ci = ((((_sy - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").cStride : stdgo.GoInt) + ((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
{
                            var _x = (_x0 : stdgo.GoInt);
                            while (_x != (_x1)) {
                                var _yy1 = (((@:checkr _src ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
var _cb1 = (((@:checkr _src ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _cr1 = (((@:checkr _src ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _r = (_r >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _r = (-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _g = (_g >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _g = (-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _b = (_b >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _b = (-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _rgba = (_dpix.__slice__(_x, (_x + (4 : stdgo.GoInt) : stdgo.GoInt), (_dpix.length)) : stdgo.Slice<stdgo.GoUInt8>);
_rgba[(0 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
_rgba[(1 : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
_rgba[(2 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
_rgba[(3 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                                {
                                    final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__1 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__2 = (_ci + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    _x = __tmp__0;
                                    _yi = __tmp__1;
                                    _ci = __tmp__2;
                                };
                            };
                        };
                        {
                            final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _y = __tmp__0;
                            _sy = __tmp__1;
                        };
                    };
                };
            } else if (__value__ == ((1 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    while (_y != (_y1)) {
                        var _dpix = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__((_y * (@:checkr _dst ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _yi = ((((_sy - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").yStride : stdgo.GoInt) + ((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
var _ciBase = ((((_sy - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").cStride : stdgo.GoInt) - ((@:checkr _src ?? throw "null pointer dereference").rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
{
                            var __0 = (_x0 : stdgo.GoInt), __1 = (_sp.x : stdgo.GoInt);
var _sx = __1, _x = __0;
                            while (_x != (_x1)) {
                                var _ci = (_ciBase + (_sx / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _yy1 = (((@:checkr _src ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
var _cb1 = (((@:checkr _src ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _cr1 = (((@:checkr _src ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _r = (_r >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _r = (-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _g = (_g >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _g = (-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _b = (_b >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _b = (-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _rgba = (_dpix.__slice__(_x, (_x + (4 : stdgo.GoInt) : stdgo.GoInt), (_dpix.length)) : stdgo.Slice<stdgo.GoUInt8>);
_rgba[(0 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
_rgba[(1 : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
_rgba[(2 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
_rgba[(3 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                                {
                                    final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__1 = (_sx + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__2 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    _x = __tmp__0;
                                    _sx = __tmp__1;
                                    _yi = __tmp__2;
                                };
                            };
                        };
                        {
                            final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _y = __tmp__0;
                            _sy = __tmp__1;
                        };
                    };
                };
            } else if (__value__ == ((2 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    while (_y != (_y1)) {
                        var _dpix = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__((_y * (@:checkr _dst ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _yi = ((((_sy - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").yStride : stdgo.GoInt) + ((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
var _ciBase = (((((_sy / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _src ?? throw "null pointer dereference").rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").cStride : stdgo.GoInt) - ((@:checkr _src ?? throw "null pointer dereference").rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
{
                            var __0 = (_x0 : stdgo.GoInt), __1 = (_sp.x : stdgo.GoInt);
var _sx = __1, _x = __0;
                            while (_x != (_x1)) {
                                var _ci = (_ciBase + (_sx / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _yy1 = (((@:checkr _src ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
var _cb1 = (((@:checkr _src ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _cr1 = (((@:checkr _src ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _r = (_r >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _r = (-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _g = (_g >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _g = (-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _b = (_b >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _b = (-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _rgba = (_dpix.__slice__(_x, (_x + (4 : stdgo.GoInt) : stdgo.GoInt), (_dpix.length)) : stdgo.Slice<stdgo.GoUInt8>);
_rgba[(0 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
_rgba[(1 : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
_rgba[(2 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
_rgba[(3 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                                {
                                    final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__1 = (_sx + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__2 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    _x = __tmp__0;
                                    _sx = __tmp__1;
                                    _yi = __tmp__2;
                                };
                            };
                        };
                        {
                            final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _y = __tmp__0;
                            _sy = __tmp__1;
                        };
                    };
                };
            } else if (__value__ == ((3 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    while (_y != (_y1)) {
                        var _dpix = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__((_y * (@:checkr _dst ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _yi = ((((_sy - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").yStride : stdgo.GoInt) + ((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
var _ci = (((((_sy / (2 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _src ?? throw "null pointer dereference").rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * (@:checkr _src ?? throw "null pointer dereference").cStride : stdgo.GoInt) + ((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
{
                            var _x = (_x0 : stdgo.GoInt);
                            while (_x != (_x1)) {
                                var _yy1 = (((@:checkr _src ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
var _cb1 = (((@:checkr _src ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _cr1 = (((@:checkr _src ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _r = (_r >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _r = (-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _g = (_g >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _g = (-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                                    _b = (_b >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                                } else {
                                    _b = (-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
                                };
var _rgba = (_dpix.__slice__(_x, (_x + (4 : stdgo.GoInt) : stdgo.GoInt), (_dpix.length)) : stdgo.Slice<stdgo.GoUInt8>);
_rgba[(0 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
_rgba[(1 : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
_rgba[(2 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
_rgba[(3 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                                {
                                    final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__1 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__2 = (_ci + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    _x = __tmp__0;
                                    _yi = __tmp__1;
                                    _ci = __tmp__2;
                                };
                            };
                        };
                        {
                            final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _y = __tmp__0;
                            _sy = __tmp__1;
                        };
                    };
                };
            } else {
                return _ok = false;
            };
        };
        return _ok = true;
    }
