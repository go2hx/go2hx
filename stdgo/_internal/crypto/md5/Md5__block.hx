package stdgo._internal.crypto.md5;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.crypto.md5.Md5__blockGeneric._blockGeneric(_dig, _p);
    }
