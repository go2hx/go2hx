package stdgo._internal.image.jpeg;
function _yCbCrToYCbCr(_m:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, _p:stdgo._internal.image.Image_point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>):Void {
        var _b = (@:check2r _m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _xmax = (_b.max.x - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _ymax = (_b.max.y - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (8 : stdgo.GoInt) : Bool)) {
                var _sy = (_p.y + _j : stdgo.GoInt);
if ((_sy > _ymax : Bool)) {
                    _sy = _ymax;
                };
{
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (8 : stdgo.GoInt) : Bool)) {
                        var _sx = (_p.x + _i : stdgo.GoInt);
if ((_sx > _xmax : Bool)) {
                            _sx = _xmax;
                        };
var _yi = (@:check2r _m.yOffset(_sx, _sy) : stdgo.GoInt);
var _ci = (@:check2r _m.cOffset(_sx, _sy) : stdgo.GoInt);
_yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _m ?? throw "null pointer dereference").y[(_yi : stdgo.GoInt)] : stdgo.GoInt32);
_cbBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _m ?? throw "null pointer dereference").cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32);
_crBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _m ?? throw "null pointer dereference").cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32);
                        _i++;
                    };
                };
                _j++;
            };
        };
    }
