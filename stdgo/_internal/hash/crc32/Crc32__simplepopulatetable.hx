package stdgo._internal.hash.crc32;
function _simplePopulateTable(_poly:stdgo.GoUInt32, _t:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _crc = (_i : stdgo.GoUInt32);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (8 : stdgo.GoInt) : Bool)) {
                        if ((_crc & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32))) {
                            _crc = (((_crc >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) ^ _poly : stdgo.GoUInt32);
                        } else {
                            _crc = (_crc >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                        };
                        _j++;
                    };
                };
_t[(_i : stdgo.GoInt)] = _crc;
                _i++;
            };
        };
    }
