package stdgo._internal.image.draw;
function _drawFillOver(_dst:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void {
        var _a = ((((65535u32 : stdgo.GoUInt32) - _sa : stdgo.GoUInt32)) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _i0 = (_dst.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _i1 = (_i0 + (_r.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        {
            var _y = (_r.min.y : stdgo.GoInt);
            stdgo.Go.cfor(_y != (_r.max.y), _y++, {
                {
                    var _i = (_i0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _i1 : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                        var _dr = stdgo.Go.pointer(_dst.pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)]);
                        var _dg = stdgo.Go.pointer(_dst.pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                        var _db = stdgo.Go.pointer(_dst.pix[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]);
                        var _da = stdgo.Go.pointer(_dst.pix[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)]);
                        _dr.value = (((((((_dr.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sr : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _dg.value = (((((((_dg.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sg : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _db.value = (((((((_db.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sb : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _da.value = (((((((_da.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sa : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    });
                };
                _i0 = (_i0 + (_dst.stride) : stdgo.GoInt);
                _i1 = (_i1 + (_dst.stride) : stdgo.GoInt);
            });
        };
    }
