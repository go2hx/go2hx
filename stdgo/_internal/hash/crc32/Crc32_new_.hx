package stdgo._internal.hash.crc32;
function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>):stdgo._internal.hash.Hash_Hash32.Hash32 {
        if (_tab == (stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable)) {
            stdgo._internal.hash.crc32.Crc32__ieeeOnce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeInit._ieeeInit);
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.hash.crc32.Crc32_T_digest.T_digest((0u32 : stdgo.GoUInt32), _tab) : stdgo._internal.hash.crc32.Crc32_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_T_digest.T_digest>));
    }