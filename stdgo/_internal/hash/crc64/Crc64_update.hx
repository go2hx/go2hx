package stdgo._internal.hash.crc64;
import stdgo._internal.errors.Errors;
function update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        return stdgo._internal.hash.crc64.Crc64__update._update(_crc, _tab, _p);
    }
