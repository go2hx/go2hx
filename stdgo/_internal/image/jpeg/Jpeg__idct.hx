package stdgo._internal.image.jpeg;
function _idct(_src:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/idct.go#L74"
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < (8 : stdgo.GoInt) : Bool)) {
                var _y8 = (_y * (8 : stdgo.GoInt) : stdgo.GoInt);
var _s = (_src.__slice__(_y8, (_y8 + (8 : stdgo.GoInt) : stdgo.GoInt), (_y8 + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/idct.go#L78"
                if (((((((_s[(1 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) && _s[(2 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _s[(3 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _s[(4 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _s[(5 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _s[(6 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (_s[(7 : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
                    var _dc = (_s[(0 : stdgo.GoInt)] << (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _s[(0 : stdgo.GoInt)] = _dc;
                    _s[(1 : stdgo.GoInt)] = _dc;
                    _s[(2 : stdgo.GoInt)] = _dc;
                    _s[(3 : stdgo.GoInt)] = _dc;
                    _s[(4 : stdgo.GoInt)] = _dc;
                    _s[(5 : stdgo.GoInt)] = _dc;
                    _s[(6 : stdgo.GoInt)] = _dc;
                    _s[(7 : stdgo.GoInt)] = _dc;
                    //"file:///home/runner/.go/go1.21.3/src/image/jpeg/idct.go#L89"
                    {
                        _y++;
                        continue;
                    };
                };
var _x0 = (((_s[(0 : stdgo.GoInt)] << (11i64 : stdgo.GoUInt64) : stdgo.GoInt32)) + (128 : stdgo.GoInt32) : stdgo.GoInt32);
var _x1 = (_s[(4 : stdgo.GoInt)] << (11i64 : stdgo.GoUInt64) : stdgo.GoInt32);
var _x2 = (_s[(6 : stdgo.GoInt)] : stdgo.GoInt32);
var _x3 = (_s[(2 : stdgo.GoInt)] : stdgo.GoInt32);
var _x4 = (_s[(1 : stdgo.GoInt)] : stdgo.GoInt32);
var _x5 = (_s[(7 : stdgo.GoInt)] : stdgo.GoInt32);
var _x6 = (_s[(5 : stdgo.GoInt)] : stdgo.GoInt32);
var _x7 = (_s[(3 : stdgo.GoInt)] : stdgo.GoInt32);
var _x8 = ((565 : stdgo.GoInt32) * ((_x4 + _x5 : stdgo.GoInt32)) : stdgo.GoInt32);
_x4 = (_x8 + ((2276 : stdgo.GoInt32) * _x4 : stdgo.GoInt32) : stdgo.GoInt32);
_x5 = (_x8 - ((3406 : stdgo.GoInt32) * _x5 : stdgo.GoInt32) : stdgo.GoInt32);
_x8 = ((2408 : stdgo.GoInt32) * ((_x6 + _x7 : stdgo.GoInt32)) : stdgo.GoInt32);
_x6 = (_x8 - ((799 : stdgo.GoInt32) * _x6 : stdgo.GoInt32) : stdgo.GoInt32);
_x7 = (_x8 - ((4017 : stdgo.GoInt32) * _x7 : stdgo.GoInt32) : stdgo.GoInt32);
_x8 = (_x0 + _x1 : stdgo.GoInt32);
_x0 = (_x0 - (_x1) : stdgo.GoInt32);
_x1 = ((1108 : stdgo.GoInt32) * ((_x3 + _x2 : stdgo.GoInt32)) : stdgo.GoInt32);
_x2 = (_x1 - ((3784 : stdgo.GoInt32) * _x2 : stdgo.GoInt32) : stdgo.GoInt32);
_x3 = (_x1 + ((1568 : stdgo.GoInt32) * _x3 : stdgo.GoInt32) : stdgo.GoInt32);
_x1 = (_x4 + _x6 : stdgo.GoInt32);
_x4 = (_x4 - (_x6) : stdgo.GoInt32);
_x6 = (_x5 + _x7 : stdgo.GoInt32);
_x5 = (_x5 - (_x7) : stdgo.GoInt32);
_x7 = (_x8 + _x3 : stdgo.GoInt32);
_x8 = (_x8 - (_x3) : stdgo.GoInt32);
_x3 = (_x0 + _x2 : stdgo.GoInt32);
_x0 = (_x0 - (_x2) : stdgo.GoInt32);
_x2 = (((((181 : stdgo.GoInt32) * ((_x4 + _x5 : stdgo.GoInt32)) : stdgo.GoInt32) + (128 : stdgo.GoInt32) : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_x4 = (((((181 : stdgo.GoInt32) * ((_x4 - _x5 : stdgo.GoInt32)) : stdgo.GoInt32) + (128 : stdgo.GoInt32) : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(0 : stdgo.GoInt)] = (((_x7 + _x1 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(1 : stdgo.GoInt)] = (((_x3 + _x2 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(2 : stdgo.GoInt)] = (((_x0 + _x4 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(3 : stdgo.GoInt)] = (((_x8 + _x6 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(4 : stdgo.GoInt)] = (((_x8 - _x6 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(5 : stdgo.GoInt)] = (((_x0 - _x4 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(6 : stdgo.GoInt)] = (((_x3 - _x2 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(7 : stdgo.GoInt)] = (((_x7 - _x1 : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/idct.go#L141"
        {
            var _x = (0 : stdgo.GoInt);
            while ((_x < (8 : stdgo.GoInt) : Bool)) {
                var _s = (_src.__slice__(_x, (_x + (57 : stdgo.GoInt) : stdgo.GoInt), (_x + (57 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
var _y0 = (((_s[(0 : stdgo.GoInt)] << (8i64 : stdgo.GoUInt64) : stdgo.GoInt32)) + (8192 : stdgo.GoInt32) : stdgo.GoInt32);
var _y1 = (_s[(32 : stdgo.GoInt)] << (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
var _y2 = (_s[(48 : stdgo.GoInt)] : stdgo.GoInt32);
var _y3 = (_s[(16 : stdgo.GoInt)] : stdgo.GoInt32);
var _y4 = (_s[(8 : stdgo.GoInt)] : stdgo.GoInt32);
var _y5 = (_s[(56 : stdgo.GoInt)] : stdgo.GoInt32);
var _y6 = (_s[(40 : stdgo.GoInt)] : stdgo.GoInt32);
var _y7 = (_s[(24 : stdgo.GoInt)] : stdgo.GoInt32);
var _y8 = (((565 : stdgo.GoInt32) * ((_y4 + _y5 : stdgo.GoInt32)) : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
_y4 = (((_y8 + ((2276 : stdgo.GoInt32) * _y4 : stdgo.GoInt32) : stdgo.GoInt32)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y5 = (((_y8 - ((3406 : stdgo.GoInt32) * _y5 : stdgo.GoInt32) : stdgo.GoInt32)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y8 = (((2408 : stdgo.GoInt32) * ((_y6 + _y7 : stdgo.GoInt32)) : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
_y6 = (((_y8 - ((799 : stdgo.GoInt32) * _y6 : stdgo.GoInt32) : stdgo.GoInt32)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y7 = (((_y8 - ((4017 : stdgo.GoInt32) * _y7 : stdgo.GoInt32) : stdgo.GoInt32)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y8 = (_y0 + _y1 : stdgo.GoInt32);
_y0 = (_y0 - (_y1) : stdgo.GoInt32);
_y1 = (((1108 : stdgo.GoInt32) * ((_y3 + _y2 : stdgo.GoInt32)) : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
_y2 = (((_y1 - ((3784 : stdgo.GoInt32) * _y2 : stdgo.GoInt32) : stdgo.GoInt32)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y3 = (((_y1 + ((1568 : stdgo.GoInt32) * _y3 : stdgo.GoInt32) : stdgo.GoInt32)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y1 = (_y4 + _y6 : stdgo.GoInt32);
_y4 = (_y4 - (_y6) : stdgo.GoInt32);
_y6 = (_y5 + _y7 : stdgo.GoInt32);
_y5 = (_y5 - (_y7) : stdgo.GoInt32);
_y7 = (_y8 + _y3 : stdgo.GoInt32);
_y8 = (_y8 - (_y3) : stdgo.GoInt32);
_y3 = (_y0 + _y2 : stdgo.GoInt32);
_y0 = (_y0 - (_y2) : stdgo.GoInt32);
_y2 = (((((181 : stdgo.GoInt32) * ((_y4 + _y5 : stdgo.GoInt32)) : stdgo.GoInt32) + (128 : stdgo.GoInt32) : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_y4 = (((((181 : stdgo.GoInt32) * ((_y4 - _y5 : stdgo.GoInt32)) : stdgo.GoInt32) + (128 : stdgo.GoInt32) : stdgo.GoInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(0 : stdgo.GoInt)] = (((_y7 + _y1 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(8 : stdgo.GoInt)] = (((_y3 + _y2 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(16 : stdgo.GoInt)] = (((_y0 + _y4 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(24 : stdgo.GoInt)] = (((_y8 + _y6 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(32 : stdgo.GoInt)] = (((_y8 - _y6 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(40 : stdgo.GoInt)] = (((_y0 - _y4 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(48 : stdgo.GoInt)] = (((_y3 - _y2 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
_s[(56 : stdgo.GoInt)] = (((_y7 - _y1 : stdgo.GoInt32)) >> (14i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                _x++;
            };
        };
    }
