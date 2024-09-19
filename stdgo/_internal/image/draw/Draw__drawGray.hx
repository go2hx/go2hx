package stdgo._internal.image.draw;
function _drawGray(_dst:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>, _sp:stdgo._internal.image.Image_Point.Point):Void {
        var _i0 = (((_r.min.x - _dst.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _i1 = (((_r.max.x - _dst.rect.min.x : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _si0 = (((_sp.x - _src.rect.min.x : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt);
        var _yMax = (_r.max.y - _dst.rect.min.y : stdgo.GoInt);
        var _y = (_r.min.y - _dst.rect.min.y : stdgo.GoInt);
        var _sy = (_sp.y - _src.rect.min.y : stdgo.GoInt);
        stdgo.Go.cfor(_y != (_yMax), {
            final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
            final __tmp__1 = (_sy + (1 : stdgo.GoInt) : stdgo.GoInt);
            _y = __tmp__0;
            _sy = __tmp__1;
        }, {
            var _dpix = (_dst.pix.__slice__((_y * _dst.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _spix = (_src.pix.__slice__((_sy * _src.stride : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __0 = (_i0 : stdgo.GoInt), __1 = (_si0 : stdgo.GoInt);
var _si = __1, _i = __0;
                stdgo.Go.cfor((_i < _i1 : Bool), {
                    final __tmp__0 = (_i + (4 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_si + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = __tmp__0;
                    _si = __tmp__1;
                }, {
                    var _p = (_spix[(_si : stdgo.GoInt)] : stdgo.GoUInt8);
                    var _d = (_dpix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _d[(0 : stdgo.GoInt)] = _p;
                    _d[(1 : stdgo.GoInt)] = _p;
                    _d[(2 : stdgo.GoInt)] = _p;
                    _d[(3 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                });
            };
        });
    }
