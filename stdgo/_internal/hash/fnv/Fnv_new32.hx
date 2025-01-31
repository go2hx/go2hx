package stdgo._internal.hash.fnv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
function new32():stdgo._internal.hash.Hash_Hash32.Hash32 {
        var _s:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32 = (-2128831035u32 : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32);
        var _s__pointer__ = stdgo.Go.pointer(_s);
        return stdgo.Go.asInterface(_s__pointer__);
    }
