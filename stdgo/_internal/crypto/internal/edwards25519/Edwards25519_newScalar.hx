package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function newScalar():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        return (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
    }
