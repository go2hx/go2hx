package stdgo._internal.hash.crc64;
function _makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table> {
        var _t = (stdgo.Go.setRef(new stdgo._internal.hash.crc64.Crc64_table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L62"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _crc = (_i : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L64"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (8 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L65"
                        if ((_crc & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
                            _crc = (((_crc >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ _poly : stdgo.GoUInt64);
                        } else {
                            _crc = (_crc >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        };
                        _j++;
                    };
                };
_t[(_i : stdgo.GoInt)] = _crc;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L73"
        return _t;
    }
