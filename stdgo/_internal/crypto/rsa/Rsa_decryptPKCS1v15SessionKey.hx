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
function decryptPKCS1v15SessionKey(_random:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkPub._checkPub((stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _k = (@:check2r _priv.size() : stdgo.GoInt);
        if (((_k - ((((_key.length) + (3 : stdgo.GoInt) : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption;
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptPKCS1v15._decryptPKCS1v15(_priv, _ciphertext), _valid:stdgo.GoInt = __tmp__._0, _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _index:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return _err;
        };
        if ((_em.length) != (_k)) {
            return stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption;
        };
        _valid = (_valid & (stdgo._internal.crypto.subtle.Subtle_constantTimeEq.constantTimeEq((((_em.length) - _index : stdgo.GoInt) : stdgo.GoInt32), (_key.length : stdgo.GoInt32))) : stdgo.GoInt);
        stdgo._internal.crypto.subtle.Subtle_constantTimeCopy.constantTimeCopy(_valid, _key, (_em.__slice__(((_em.length) - (_key.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
