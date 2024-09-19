package stdgo._internal.hash.crc64;
function _makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table> {
        var _t = (stdgo.Go.setRef(new stdgo._internal.hash.crc64.Crc64_Table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _crc = (_i : stdgo.GoUInt64);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                        if ((_crc & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
                            _crc = (((_crc >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ _poly : stdgo.GoUInt64);
                        } else {
                            _crc = (_crc >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        };
                    });
                };
                _t[(_i : stdgo.GoInt)] = _crc;
            });
        };
        return _t;
    }
