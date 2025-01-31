package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function _boringPublicKey(_0:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>; var _1 : stdgo.Error; } {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
