package stdgo._internal.image.draw;
function _drawGlyphOver(_dst:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>, _mask:stdgo.Ref<stdgo._internal.image.Image_Alpha.Alpha>, _mp:stdgo._internal.image.Image_Point.Point):Void {
        var _i0 = (_dst.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _i1 = (_i0 + (_r.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        var _mi0 = (_mask.pixOffset(_mp.x, _mp.y) : stdgo.GoInt);
        var __tmp__ = _src.rgba(), _sr:stdgo.GoUInt32 = __tmp__._0, _sg:stdgo.GoUInt32 = __tmp__._1, _sb:stdgo.GoUInt32 = __tmp__._2, _sa:stdgo.GoUInt32 = __tmp__._3;
        {
            var __0 = (_r.min.y : stdgo.GoInt), __1 = (_mp.y : stdgo.GoInt);
var _my = __1, _y = __0;
            stdgo.Go.cfor(_y != (_r.max.y), {
                final __tmp__0 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (_my + (1 : stdgo.GoInt) : stdgo.GoInt);
                _y = __tmp__0;
                _my = __tmp__1;
            }, {
                {
                    var __0 = (_i0 : stdgo.GoInt), __1 = (_mi0 : stdgo.GoInt);
var _mi = __1, _i = __0;
                    stdgo.Go.cfor((_i < _i1 : Bool), {
                        final __tmp__0 = (_i + (4 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_mi + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _i = __tmp__0;
                        _mi = __tmp__1;
                    }, {
                        var _ma = (_mask.pix[(_mi : stdgo.GoInt)] : stdgo.GoUInt32);
                        if (_ma == ((0u32 : stdgo.GoUInt32))) {
                            continue;
                        };
                        _ma = (_ma | ((_ma << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                        var _a = ((((65535u32 : stdgo.GoUInt32) - (((_sa * _ma : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32)) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        var _d = (_dst.pix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _d[(0 : stdgo.GoInt)] = (((((((_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + (_sr * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _d[(1 : stdgo.GoInt)] = (((((((_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + (_sg * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _d[(2 : stdgo.GoInt)] = (((((((_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + (_sb * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _d[(3 : stdgo.GoInt)] = (((((((_d[(3 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) + (_sa * _ma : stdgo.GoUInt32) : stdgo.GoUInt32)) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    });
                };
                _i0 = (_i0 + (_dst.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_dst.stride) : stdgo.GoInt);
                _mi0 = (_mi0 + (_mask.stride) : stdgo.GoInt);
            });
        };
    }