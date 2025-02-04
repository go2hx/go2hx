package stdgo._internal.hash.crc64;
function _tableSum(_t:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>):stdgo.GoUInt64 {
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2048, 2048).__setNumber32__();
        var _b = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
            for (__0 => _x in _t) {
                _b = stdgo._internal.hash.crc64.Crc64__appenduint64._appendUint64(_b, _x);
            };
        };
        return stdgo._internal.hash.crc64.Crc64_checksum.checksum(_b, stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-2882303761517117440i64 : stdgo.GoUInt64)));
    }
