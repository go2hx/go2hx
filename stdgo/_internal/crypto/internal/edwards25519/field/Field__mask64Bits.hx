package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _mask64Bits(_cond:stdgo.GoInt):stdgo.GoUInt64 {
        return (-1 ^ ((_cond : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
    }
