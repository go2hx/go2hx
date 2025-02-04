package stdgo._internal.crypto.tls;
function _macSHA256(_key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, _key);
    }
