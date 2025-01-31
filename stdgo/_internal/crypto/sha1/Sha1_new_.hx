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
function new_():stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            return stdgo._internal.crypto.sha1.Sha1__boringNewSHA1._boringNewSHA1();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
