package stdgo._internal.crypto.internal.boring;
import _internal.crypto.internal.boring.sig.Sig;
function newHMAC(_h:() -> stdgo._internal.hash.Hash_Hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_Hash.Hash {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
