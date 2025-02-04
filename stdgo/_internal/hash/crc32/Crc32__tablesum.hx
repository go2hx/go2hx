package stdgo._internal.hash.crc32;
function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo.GoUInt32 {
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
        var _b = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
            for (__4 => _x in _t) {
                _b = stdgo._internal.hash.crc32.Crc32__appenduint32._appendUint32(_b, _x);
            };
        };
        return stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE(_b);
    }
