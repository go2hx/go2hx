package stdgo._internal.image.jpeg;
function _yCbCrToYCbCr(_m:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>, _p:stdgo._internal.image.Image_Point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>):Void {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
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
var _yi = (_m.yoffset(_sx, _sy) : stdgo.GoInt);
var _ci = (_m.coffset(_sx, _sy) : stdgo.GoInt);
_yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_m.y[(_yi : stdgo.GoInt)] : stdgo.GoInt32);
_cbBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_m.cb[(_ci : stdgo.GoInt)] : stdgo.GoInt32);
_crBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_m.cr[(_ci : stdgo.GoInt)] : stdgo.GoInt32);
                        _i++;
                    };
                };
                _j++;
            };
        };
    }
