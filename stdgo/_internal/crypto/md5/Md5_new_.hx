package stdgo._internal.crypto.md5;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
function new_():stdgo._internal.hash.Hash_Hash.Hash {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.md5.Md5_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
