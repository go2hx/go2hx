package stdgo._internal.image.jpeg;
function _scale(_dst:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _src:stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                var _dstOff = ((((_i & (2 : stdgo.GoInt) : stdgo.GoInt)) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | (((_i & (1 : stdgo.GoInt) : stdgo.GoInt)) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
{
                    var _y = (0 : stdgo.GoInt);
                    while ((_y < (4 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < (4 : stdgo.GoInt) : Bool)) {
                                var _j = (((16 : stdgo.GoInt) * _y : stdgo.GoInt) + ((2 : stdgo.GoInt) * _x : stdgo.GoInt) : stdgo.GoInt);
var _sum = (((_src[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] + _src[(_i : stdgo.GoInt)][(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32) + _src[(_i : stdgo.GoInt)][(_j + (8 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32) + _src[(_i : stdgo.GoInt)][(_j + (9 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
_dst[((((8 : stdgo.GoInt) * _y : stdgo.GoInt) + _x : stdgo.GoInt) + _dstOff : stdgo.GoInt)] = (((_sum + (2 : stdgo.GoInt32) : stdgo.GoInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                                _x++;
                            };
                        };
                        _y++;
                    };
                };
                _i++;
            };
        };
    }
