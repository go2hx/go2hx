package stdgo._internal.hash.crc32;
function _slicingMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table> {
        var _t = (stdgo.Go.setRef(new stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table(8, 8, ...[for (i in 0 ... 8) new stdgo._internal.hash.crc32.Crc32_table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt32)])])) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table>);
        stdgo._internal.hash.crc32.Crc32__simplepopulatetable._simplePopulateTable(_poly, (stdgo.Go.setRef(_t[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _crc = (_t[(0 : stdgo.GoInt)][(_i : stdgo.GoInt)] : stdgo.GoUInt32);
{
                    var _j = (1 : stdgo.GoInt);
                    while ((_j < (8 : stdgo.GoInt) : Bool)) {
                        _crc = (_t[(0 : stdgo.GoInt)][((_crc & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] ^ ((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_t[(_j : stdgo.GoInt)][(_i : stdgo.GoInt)] = _crc;
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _t;
    }
