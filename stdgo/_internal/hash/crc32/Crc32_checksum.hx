package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>):stdgo.GoUInt32 {
        return stdgo._internal.hash.crc32.Crc32_update.update((0u32 : stdgo.GoUInt32), _tab, _data);
    }
