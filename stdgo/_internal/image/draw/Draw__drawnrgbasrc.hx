package stdgo._internal.image.draw;
function _drawNRGBASrc(_dst:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>, _sp:stdgo._internal.image.Image_point.Point):Void {
        var _i0 = (((_r.min.x - (@:checkr _dst ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _i1 = (((_r.max.x - (@:checkr _dst ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _si0 = (((_sp.x - (@:checkr _src ?? throw "null pointer dereference").rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _yMax = (_r.max.y - (@:checkr _dst ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
        var _y = (_r.min.y - (@:checkr _dst ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
        var _sy = (_sp.y - (@:checkr _src ?? throw "null pointer dereference").rect.min.y : stdgo.GoInt);
        while (_y != (_yMax)) {
            var _dpix = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__((_y * (@:checkr _dst ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _spix = ((@:checkr _src ?? throw "null pointer dereference").pix.__slice__((_sy * (@:checkr _src ?? throw "null pointer dereference").stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
{
                var __0 = (_i0 : stdgo.GoInt), __1 = (_si0 : stdgo.GoInt);
var _si = __1, _i = __0;
                while ((_i < _i1 : Bool)) {
                    var _s = (_spix.__slice__(_si, (_si + (4 : stdgo.GoInt) : stdgo.GoInt), (_si + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _sa = ((_s[(3 : stdgo.GoInt)] : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _sr = (((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32) * _sa : stdgo.GoUInt32) / (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _sg = (((_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) * _sa : stdgo.GoUInt32) / (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _sb = (((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) * _sa : stdgo.GoUInt32) / (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _d = (_dpix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_d[(0 : stdgo.GoInt)] = ((_sr >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_d[(1 : stdgo.GoInt)] = ((_sg >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_d[(2 : stdgo.GoInt)] = ((_sb >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_d[(3 : stdgo.GoInt)] = ((_sa >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    {
                        final __tmp__0 = (_i + (4 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_si + (4 : stdgo.GoInt) : stdgo.GoInt);
                        _i = __tmp__0;
                        _si = __tmp__1;
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
    }
