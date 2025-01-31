package stdgo._internal.crypto.sha1;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.crypto.sha1.Sha1__blockGeneric._blockGeneric(_dig, _p);
    }
