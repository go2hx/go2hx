package stdgo._internal.image.draw;
function _drawFillOver(_dst:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _r:stdgo._internal.image.Image_rectangle.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void {
        var _a = ((((65535u32 : stdgo.GoUInt32) - _sa : stdgo.GoUInt32)) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _i0 = (@:check2r _dst.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _i1 = (_i0 + (_r.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        {
            var _y = (_r.min.y : stdgo.GoInt);
            while (_y != (_r.max.y)) {
                {
                    var _i = (_i0 : stdgo.GoInt);
                    while ((_i < _i1 : Bool)) {
                        var _dr = stdgo.Go.pointer((@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)]);
var _dg = stdgo.Go.pointer((@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
var _db = stdgo.Go.pointer((@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]);
var _da = stdgo.Go.pointer((@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)]);
_dr.value = (((((((_dr.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sr : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_dg.value = (((((((_dg.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sg : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_db.value = (((((((_db.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sb : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_da.value = (((((((_da.value : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sa : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                        _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
_i0 = (_i0 + ((@:checkr _dst ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _dst ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                _y++;
            };
        };
    }
