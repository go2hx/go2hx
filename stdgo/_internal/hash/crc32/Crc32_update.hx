package stdgo._internal.hash.crc32;
function update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        return stdgo._internal.hash.crc32.Crc32__update._update(_crc, _tab, _p, true);
    }
