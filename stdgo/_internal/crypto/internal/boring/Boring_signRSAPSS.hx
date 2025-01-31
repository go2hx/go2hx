package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
function signRSAPSS(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
