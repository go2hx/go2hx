package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
function verifyRSAPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
