package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function newGeneratorPoint():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        return @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).set(stdgo._internal.crypto.internal.edwards25519.Edwards25519__generator._generator);
    }
