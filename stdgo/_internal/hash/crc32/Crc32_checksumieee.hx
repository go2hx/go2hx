package stdgo._internal.hash.crc32;
function checksumIEEE(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        @:check2 stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
        return stdgo._internal.hash.crc32.Crc32__updateieee._updateIEEE((0u32 : stdgo.GoUInt32), _data);
    }
