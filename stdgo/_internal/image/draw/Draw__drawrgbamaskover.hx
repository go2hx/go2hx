package stdgo._internal.image.draw;
function _drawRGBAMaskOver(_dst:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _sp:stdgo._internal.image.Image_point.Point, _mask:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>, _mp:stdgo._internal.image.Image_point.Point):Void {
        var __0 = (_r.min.x : stdgo.GoInt), __1 = (_r.max.x : stdgo.GoInt), __2 = (1 : stdgo.GoInt);
var _dx = __2, _x1 = __1, _x0 = __0;
        var __0 = (_r.min.y : stdgo.GoInt), __1 = (_r.max.y : stdgo.GoInt), __2 = (1 : stdgo.GoInt);
var _dy = __2, _y1 = __1, _y0 = __0;
        if (((_dst == _src) && _r.overlaps(_r.add(_sp.sub(_r.min?.__copy__())?.__copy__())?.__copy__()) : Bool)) {
            if (((_sp.y < _r.min.y : Bool) || (_sp.y == (_r.min.y) && (_sp.x < _r.min.x : Bool) : Bool) : Bool)) {
                {
                    final __tmp__0 = (_x1 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_x0 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__2 = (-1 : stdgo.GoInt);
                    _x0 = __tmp__0;
                    _x1 = __tmp__1;
                    _dx = __tmp__2;
                };
                {
                    final __tmp__0 = (_y1 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_y0 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__2 = (-1 : stdgo.GoInt);
                    _y0 = __tmp__0;
                    _y1 = __tmp__1;
                    _dy = __tmp__2;
                };
            };
        };
        var _sy = ((_sp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
        var _my = ((_mp.y + _y0 : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
        var _sx0 = ((_sp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
        var _mx0 = ((_mp.x + _x0 : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
        var _sx1 = (_sx0 + ((_x1 - _x0 : stdgo.GoInt)) : stdgo.GoInt);
        var _i0 = (@:check2r _dst.pixOffset(_x0, _y0) : stdgo.GoInt);
        var _di = (_dx * (4 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _y = (_y0 : stdgo.GoInt);
            while (_y != (_y1)) {
                {
                    var __0 = (_i0 : stdgo.GoInt), __1 = (_sx0 : stdgo.GoInt), __2 = (_mx0 : stdgo.GoInt);
var _mx = __2, _sx = __1, _i = __0;
                    while (_sx != (_sx1)) {
                        var _mi = (@:check2r _mask.pixOffset(_mx, _my) : stdgo.GoInt);
var _ma = ((@:checkr _mask ?? throw "null pointer dereference").pix[(_mi : stdgo.GoInt)] : stdgo.GoUInt32);
_ma = (_ma | ((_ma << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _si = (@:check2r _src.pixOffset(_sx, _sy) : stdgo.GoInt);
var _sr = ((@:checkr _src ?? throw "null pointer dereference").pix[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
var _sg = ((@:checkr _src ?? throw "null pointer dereference").pix[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
var _sb = ((@:checkr _src ?? throw "null pointer dereference").pix[(_si + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
var _sa = ((@:checkr _src ?? throw "null pointer dereference").pix[(_si + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
_sr = (_sr | ((_sr << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_sg = (_sg | ((_sg << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_sb = (_sb | ((_sb << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_sa = (_sa | ((_sa << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _d = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _dr = (_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
var _dg = (_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32);
var _db = (_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32);
var _da = (_d[(3 : stdgo.GoInt)] : stdgo.GoUInt32);
var _a = ((((65535u32 : stdgo.GoUInt32) - (((_sa * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32)) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
_d[(0 : stdgo.GoInt)] = ((((((_dr * _a : stdgo.GoUInt32) + (_sr * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_d[(1 : stdgo.GoInt)] = ((((((_dg * _a : stdgo.GoUInt32) + (_sg * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_d[(2 : stdgo.GoInt)] = ((((((_db * _a : stdgo.GoUInt32) + (_sb * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_d[(3 : stdgo.GoInt)] = ((((((_da * _a : stdgo.GoUInt32) + (_sa * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        {
                            final __tmp__0 = (_i + _di : stdgo.GoInt);
                            final __tmp__1 = (_sx + _dx : stdgo.GoInt);
                            final __tmp__2 = (_mx + _dx : stdgo.GoInt);
                            _i = __tmp__0;
                            _sx = __tmp__1;
                            _mx = __tmp__2;
                        };
                    };
                };
_i0 = (_i0 + ((_dy * (@:checkr _dst ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.GoInt);
                {
                    final __tmp__0 = (_y + _dy : stdgo.GoInt);
                    final __tmp__1 = (_sy + _dy : stdgo.GoInt);
                    final __tmp__2 = (_my + _dy : stdgo.GoInt);
                    _y = __tmp__0;
                    _sy = __tmp__1;
                    _my = __tmp__2;
                };
            };
        };
    }
