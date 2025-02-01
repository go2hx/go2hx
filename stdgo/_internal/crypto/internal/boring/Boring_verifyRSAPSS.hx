package stdgo._internal.crypto.internal.boring;
import stdgo._internal.crypto.internal.boring.sig.Sig;
function verifyRSAPSS(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):stdgo.Error {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
