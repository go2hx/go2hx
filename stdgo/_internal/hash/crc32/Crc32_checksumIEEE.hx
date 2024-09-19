package stdgo._internal.hash.crc32;
function checksumIEEE(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        stdgo._internal.hash.crc32.Crc32__ieeeOnce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeInit._ieeeInit);
        return stdgo._internal.hash.crc32.Crc32__updateIEEE._updateIEEE((0u32 : stdgo.GoUInt32), _data);
    }
