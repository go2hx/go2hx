package stdgo._internal.image.jpeg;
function _rgbaToYCbCr(_m:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _p:stdgo._internal.image.Image_point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>):Void {
        var _b = (@:check2r _m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _xmax = (_b.max.x - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _ymax = (_b.max.y - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (8 : stdgo.GoInt) : Bool)) {
                var _sj = (_p.y + _j : stdgo.GoInt);
if ((_sj > _ymax : Bool)) {
                    _sj = _ymax;
                };
var _offset = ((((_sj - _b.min.y : stdgo.GoInt)) * (@:checkr _m ?? throw "null pointer dereference").stride : stdgo.GoInt) - (_b.min.x * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
{
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (8 : stdgo.GoInt) : Bool)) {
                        var _sx = (_p.x + _i : stdgo.GoInt);
if ((_sx > _xmax : Bool)) {
                            _sx = _xmax;
                        };
var _pix = ((@:checkr _m ?? throw "null pointer dereference").pix.__slice__((_offset + (_sx * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var __tmp__ = stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr(_pix[(0 : stdgo.GoInt)], _pix[(1 : stdgo.GoInt)], _pix[(2 : stdgo.GoInt)]), _yy:stdgo.GoUInt8 = __tmp__._0, _cb:stdgo.GoUInt8 = __tmp__._1, _cr:stdgo.GoUInt8 = __tmp__._2;
_yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_yy : stdgo.GoInt32);
_cbBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_cb : stdgo.GoInt32);
_crBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_cr : stdgo.GoInt32);
                        _i++;
                    };
                };
                _j++;
            };
        };
    }
