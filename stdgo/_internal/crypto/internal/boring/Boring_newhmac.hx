package stdgo._internal.crypto.internal.boring;
function newHMAC(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_hash.Hash {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
