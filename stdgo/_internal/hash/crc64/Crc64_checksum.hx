package stdgo._internal.hash.crc64;
import stdgo._internal.errors.Errors;
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>):stdgo.GoUInt64 {
        return stdgo._internal.hash.crc64.Crc64__update._update((0i64 : stdgo.GoUInt64), _tab, _data);
    }
