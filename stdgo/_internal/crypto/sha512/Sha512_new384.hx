package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function new384():stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newSHA384.newSHA384();
        };
        var _d = (stdgo.Go.setRef(({ _function : (6u32 : stdgo._internal.crypto.Crypto_Hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
