package stdgo._internal.hash.crc32;
function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>):stdgo.GoUInt32 {
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
        var _b = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
            for (__4 => _x in _t) {
                _b = stdgo._internal.hash.crc32.Crc32__appendUint32._appendUint32(_b, _x);
            };
        };
        return stdgo._internal.hash.crc32.Crc32_checksumIEEE.checksumIEEE(_b);
    }
