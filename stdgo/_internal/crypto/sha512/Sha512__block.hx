package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.crypto.sha512.Sha512__blockGeneric._blockGeneric(_dig, _p);
    }
