package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function new224():stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newSHA224.newSHA224();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest>);
        (@:checkr _d ?? throw "null pointer dereference")._is224 = true;
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
