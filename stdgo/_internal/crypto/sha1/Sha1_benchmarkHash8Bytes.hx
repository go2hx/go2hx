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
function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.crypto.sha1.Sha1__benchmarkSize._benchmarkSize(_b, (8 : stdgo.GoInt));
    }
