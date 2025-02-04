package stdgo._internal.image.draw;
function _drawFillSrc(_dst:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>, _r:stdgo._internal.image.Image_rectangle.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void {
        var _sr8 = ((_sr >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        var _sg8 = ((_sg >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        var _sb8 = ((_sb >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        var _sa8 = ((_sa >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        var _i0 = (@:check2r _dst.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _i1 = (_i0 + (_r.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i = (_i0 : stdgo.GoInt);
            while ((_i < _i1 : Bool)) {
                (@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = _sr8;
(@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _sg8;
(@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _sb8;
(@:checkr _dst ?? throw "null pointer dereference").pix[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = _sa8;
                _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _firstRow = ((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _y = (_r.min.y + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_y < _r.max.y : Bool)) {
                _i0 = (_i0 + ((@:checkr _dst ?? throw "null pointer dereference").stride) : stdgo.GoInt);
_i1 = (_i1 + ((@:checkr _dst ?? throw "null pointer dereference").stride) : stdgo.GoInt);
((@:checkr _dst ?? throw "null pointer dereference").pix.__slice__(_i0, _i1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_firstRow);
                _y++;
            };
        };
    }
