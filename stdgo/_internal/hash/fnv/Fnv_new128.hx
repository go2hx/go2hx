package stdgo._internal.hash.fnv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
function new128():stdgo._internal.hash.Hash_Hash.Hash {
        var _s:stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128 = new stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt64)]);
        _s[(0 : stdgo.GoInt)] = (7809847782465536322i64 : stdgo.GoUInt64);
        _s[(1 : stdgo.GoInt)] = (7113472399480571277i64 : stdgo.GoUInt64);
        return stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>));
    }
