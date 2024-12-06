package stdgo._internal.hash.crc64;
function _makeSlicingBy8Table(_t:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>):stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Crc64_Table.Table>> {
        var _helperTable:stdgo.GoArray<stdgo._internal.hash.crc64.Crc64_Table.Table> = new stdgo.GoArray<stdgo._internal.hash.crc64.Crc64_Table.Table>(8, 8, ...[for (i in 0 ... 8) new stdgo._internal.hash.crc64.Crc64_Table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt64)])]);
        var _helperTable__pointer__ = (stdgo.Go.setRef(_helperTable) : stdgo.Ref<stdgo.GoArray<stdgo._internal.hash.crc64.Crc64_Table.Table>>);
        _helperTable[(0 : stdgo.GoInt)] = (_t : stdgo._internal.hash.crc64.Crc64_Table.Table)?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _crc = (_t[(_i : stdgo.GoInt)] : stdgo.GoUInt64);
{
                    var _j = (1 : stdgo.GoInt);
                    while ((_j < (8 : stdgo.GoInt) : Bool)) {
                        _crc = (_t[((_crc & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] ^ ((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
_helperTable[(_j : stdgo.GoInt)][(_i : stdgo.GoInt)] = _crc;
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _helperTable__pointer__;
    }
