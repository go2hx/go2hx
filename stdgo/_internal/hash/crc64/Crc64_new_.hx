package stdgo._internal.hash.crc64;
import stdgo._internal.errors.Errors;
function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>):stdgo._internal.hash.Hash_Hash64.Hash64 {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.hash.crc64.Crc64_T_digest.T_digest((0i64 : stdgo.GoUInt64), _tab) : stdgo._internal.hash.crc64.Crc64_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>));
    }
