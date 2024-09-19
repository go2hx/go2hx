package _internal.image.internal.imageutil;
function drawYCbCr(_dst:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _sp:stdgo._internal.image.Image_Point.Point):Bool {
        var _ok = false;
        var _x0 = (((_r.min.x - _dst.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _x1 = (((_r.max.x - _dst.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _y0 = (_r.min.y - _dst.rect.min.y : stdgo.GoInt);
        var _y1 = (_r.max.y - _dst.rect.min.y : stdgo.GoInt);
        {
            final __value__ = _src.subsampleRatio;
            if (__value__ == ((0 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    stdgo.Go.cfor(_y != (_y1), {
                        final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _y = __tmp__0;
                        _sy = __tmp__1;
                    }, {
                        var _dpix = (_dst.pix.__slice__((_y * _dst.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var _yi = ((((_sy - _src.rect.min.y : stdgo.GoInt)) * _src.ystride : stdgo.GoInt) + ((_sp.x - _src.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
                        var _ci = ((((_sy - _src.rect.min.y : stdgo.GoInt)) * _src.cstride : stdgo.GoInt) + ((_sp.x - _src.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
                        {
                            var _x = (_x0 : stdgo.GoInt);
                            stdgo.Go.cfor(_x != (_x1), {
                                final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__1 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__2 = (_ci + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _x = __tmp__0;
                                _yi = __tmp__1;
                                _ci = __tmp__2;
                            }, {
                                var _yy1 = ((_src.y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cb1 = ((_src.cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cr1 = ((_src.cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
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
                            });
                        };
                    });
                };
            } else if (__value__ == ((1 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    stdgo.Go.cfor(_y != (_y1), {
                        final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _y = __tmp__0;
                        _sy = __tmp__1;
                    }, {
                        var _dpix = (_dst.pix.__slice__((_y * _dst.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var _yi = ((((_sy - _src.rect.min.y : stdgo.GoInt)) * _src.ystride : stdgo.GoInt) + ((_sp.x - _src.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
                        var _ciBase = ((((_sy - _src.rect.min.y : stdgo.GoInt)) * _src.cstride : stdgo.GoInt) - (_src.rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                        {
                            var __0 = (_x0 : stdgo.GoInt), __1 = (_sp.x : stdgo.GoInt);
var _sx = __1, _x = __0;
                            stdgo.Go.cfor(_x != (_x1), {
                                final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__1 = (_sx + (1 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__2 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _x = __tmp__0;
                                _sx = __tmp__1;
                                _yi = __tmp__2;
                            }, {
                                var _ci = (_ciBase + (_sx / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                                var _yy1 = ((_src.y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cb1 = ((_src.cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cr1 = ((_src.cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
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
                            });
                        };
                    });
                };
            } else if (__value__ == ((2 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    stdgo.Go.cfor(_y != (_y1), {
                        final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _y = __tmp__0;
                        _sy = __tmp__1;
                    }, {
                        var _dpix = (_dst.pix.__slice__((_y * _dst.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var _yi = ((((_sy - _src.rect.min.y : stdgo.GoInt)) * _src.ystride : stdgo.GoInt) + ((_sp.x - _src.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
                        var _ciBase = (((((_sy / (2 : stdgo.GoInt) : stdgo.GoInt) - (_src.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _src.cstride : stdgo.GoInt) - (_src.rect.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                        {
                            var __0 = (_x0 : stdgo.GoInt), __1 = (_sp.x : stdgo.GoInt);
var _sx = __1, _x = __0;
                            stdgo.Go.cfor(_x != (_x1), {
                                final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__1 = (_sx + (1 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__2 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _x = __tmp__0;
                                _sx = __tmp__1;
                                _yi = __tmp__2;
                            }, {
                                var _ci = (_ciBase + (_sx / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                                var _yy1 = ((_src.y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cb1 = ((_src.cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cr1 = ((_src.cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
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
                            });
                        };
                    });
                };
            } else if (__value__ == ((3 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                {
                    var __0 = (_y0 : stdgo.GoInt), __1 = (_sp.y : stdgo.GoInt);
var _sy = __1, _y = __0;
                    stdgo.Go.cfor(_y != (_y1), {
                        final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _y = __tmp__0;
                        _sy = __tmp__1;
                    }, {
                        var _dpix = (_dst.pix.__slice__((_y * _dst.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var _yi = ((((_sy - _src.rect.min.y : stdgo.GoInt)) * _src.ystride : stdgo.GoInt) + ((_sp.x - _src.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
                        var _ci = (((((_sy / (2 : stdgo.GoInt) : stdgo.GoInt) - (_src.rect.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) * _src.cstride : stdgo.GoInt) + ((_sp.x - _src.rect.min.x : stdgo.GoInt)) : stdgo.GoInt);
                        {
                            var _x = (_x0 : stdgo.GoInt);
                            stdgo.Go.cfor(_x != (_x1), {
                                final __tmp__0 = (_x + (4 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__1 = (_yi + (1 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__2 = (_ci + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _x = __tmp__0;
                                _yi = __tmp__1;
                                _ci = __tmp__2;
                            }, {
                                var _yy1 = ((_src.y[(_yi : stdgo.GoInt)] : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cb1 = ((_src.cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
                                var _cr1 = ((_src.cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
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
                            });
                        };
                    });
                };
            } else {
                return false;
            };
        };
        return true;
    }
