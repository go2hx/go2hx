package stdgo._internal.crypto.internal.boring;
import stdgo._internal.crypto.internal.boring.sig.Sig;
function decryptRSAOAEP(_h:stdgo._internal.hash.Hash_Hash.Hash, _mgfHash:stdgo._internal.hash.Hash_Hash.Hash, _priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
