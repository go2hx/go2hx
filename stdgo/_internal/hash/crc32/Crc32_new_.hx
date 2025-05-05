package stdgo._internal.hash.crc32;
function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo._internal.hash.Hash_hash32.Hash32 {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L148"
        if (_tab == (stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable)) {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L149"
            stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32.go#L151"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.hash.crc32.Crc32_t_digest.T_digest((0u32 : stdgo.GoUInt32), _tab) : stdgo._internal.hash.crc32.Crc32_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>));
    }
