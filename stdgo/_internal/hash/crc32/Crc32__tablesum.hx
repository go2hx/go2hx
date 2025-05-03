package stdgo._internal.hash.crc32;
function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo.GoUInt32 {
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
        var _b = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L259"
        if (({
            final value = _t;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L260"
            for (__4 => _x in _t) {
                _b = stdgo._internal.hash.crc32.Crc32__appenduint32._appendUint32(_b, _x);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L264"
        return stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE(_b);
    }
