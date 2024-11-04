package stdgo._internal.image.draw;
function _drawCMYK(_dst:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>, _sp:stdgo._internal.image.Image_Point.Point):Void {
        var _i0 = (((_r.min.x - _dst.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _i1 = (((_r.max.x - _dst.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _si0 = (((_sp.x - _src.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _yMax = (_r.max.y - _dst.rect.min.y : stdgo.GoInt);
        var _y = (_r.min.y - _dst.rect.min.y : stdgo.GoInt);
        var _sy = (_sp.y - _src.rect.min.y : stdgo.GoInt);
        while (_y != (_yMax)) {
            var _dpix = (_dst.pix.__slice__((_y * _dst.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _spix = (_src.pix.__slice__((_sy * _src.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
{
                var __0 = (_i0 : stdgo.GoInt), __1 = (_si0 : stdgo.GoInt);
var _si = __1, _i = __0;
                while ((_i < _i1 : Bool)) {
                    var _s = (_spix.__slice__(_si, (_si + (4 : stdgo.GoInt) : stdgo.GoInt), (_si + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _d = (_dpix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
{
                        var __tmp__ = stdgo._internal.image.color.Color_cmyktoRGB.cmyktoRGB(_s[(0 : stdgo.GoInt)], _s[(1 : stdgo.GoInt)], _s[(2 : stdgo.GoInt)], _s[(3 : stdgo.GoInt)]);
                        _d[(0 : stdgo.GoInt)] = __tmp__._0;
                        _d[(1 : stdgo.GoInt)] = __tmp__._1;
                        _d[(2 : stdgo.GoInt)] = __tmp__._2;
                    };
_d[(3 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
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
