package stdgo._internal.image.draw;
function _makeGolden(_dst:stdgo._internal.image.Image_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _mask:stdgo._internal.image.Image_image.Image, _mp:stdgo._internal.image.Image_point.Point, _op:stdgo._internal.image.draw.Draw_op.Op):stdgo._internal.image.Image_image.Image {
        var _b = (_dst.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _sb = (_src.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _mb = (stdgo._internal.image.Image_rect.rect((-1000000000 : stdgo.GoInt), (-1000000000 : stdgo.GoInt), (1000000000 : stdgo.GoInt), (1000000000 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        if (_mask != null) {
            _mb = _mask.bounds()?.__copy__();
        };
        var _golden = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _b.max.x, _b.max.y)?.__copy__());
        {
            var _y = (_r.min.y : stdgo.GoInt);
            while ((_y < _r.max.y : Bool)) {
                var _sy = ((_y + _sp.y : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
var _my = ((_y + _mp.y : stdgo.GoInt) - _r.min.y : stdgo.GoInt);
{
                    var _x = (_r.min.x : stdgo.GoInt);
                    while ((_x < _r.max.x : Bool)) {
                        if (!(stdgo._internal.image.Image_pt.pt(_x, _y).in_(_b.__copy__()))) {
                            {
                                _x++;
                                continue;
                            };
                        };
var _sx = ((_x + _sp.x : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
if (!(stdgo._internal.image.Image_pt.pt(_sx, _sy).in_(_sb.__copy__()))) {
                            {
                                _x++;
                                continue;
                            };
                        };
var _mx = ((_x + _mp.x : stdgo.GoInt) - _r.min.x : stdgo.GoInt);
if (!(stdgo._internal.image.Image_pt.pt(_mx, _my).in_(_mb.__copy__()))) {
                            {
                                _x++;
                                continue;
                            };
                        };
{};
var _dr:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _dg:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _db:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _da:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
if (_op == ((0 : stdgo._internal.image.draw.Draw_op.Op))) {
                            {
                                var __tmp__ = _dst.at(_x, _y).rGBA();
                                _dr = @:tmpset0 __tmp__._0;
                                _dg = @:tmpset0 __tmp__._1;
                                _db = @:tmpset0 __tmp__._2;
                                _da = @:tmpset0 __tmp__._3;
                            };
                        };
var __tmp__ = _src.at(_sx, _sy).rGBA(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
var _ma = ((65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
if (_mask != null) {
                            {
                                var __tmp__ = _mask.at(_mx, _my).rGBA();
                                _ma = @:tmpset0 __tmp__._3;
                            };
                        };
var _a = ((65535u32 : stdgo.GoUInt32) - (((_sa * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
@:check2r _golden.set(_x, _y, stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba64.RGBA64((((((_dr * _a : stdgo.GoUInt32) + (_sr * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), (((((_dg * _a : stdgo.GoUInt32) + (_sg * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), (((((_db * _a : stdgo.GoUInt32) + (_sb * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16), (((((_da * _a : stdgo.GoUInt32) + (_sa * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64)));
                        _x++;
                    };
                };
                _y++;
            };
        };
        return @:check2r _golden.subImage(_b?.__copy__());
    }
