package stdgo._internal.hash.crc64;
function update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        return stdgo._internal.hash.crc64.Crc64__update._update(_crc, _tab, _p);
    }
