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
function _checkPub(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>):stdgo.Error {
        if (((@:checkr _pub ?? throw "null pointer dereference").n == null || ((@:checkr _pub ?? throw "null pointer dereference").n : Dynamic).__nil__)) {
            return stdgo._internal.crypto.rsa.Rsa__errPublicModulus._errPublicModulus;
        };
        if (((@:checkr _pub ?? throw "null pointer dereference").e < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__errPublicExponentSmall._errPublicExponentSmall;
        };
        if (((@:checkr _pub ?? throw "null pointer dereference").e > (2147483647 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__errPublicExponentLarge._errPublicExponentLarge;
        };
        return (null : stdgo.Error);
    }
