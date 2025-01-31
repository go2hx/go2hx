package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
function x25519():stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve {
        return stdgo.Go.asInterface(stdgo._internal.crypto.ecdh.Ecdh__x25519._x25519);
    }
