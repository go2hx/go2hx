package stdgo._internal.crypto.tls;
function _macSHA1(_key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_Hash.Hash {
        var _h = (stdgo._internal.crypto.sha1.Sha1_new_.new_ : () -> stdgo._internal.hash.Hash_Hash.Hash);
        if (true) {
            _h = stdgo._internal.crypto.tls.Tls__newConstantTimeHash._newConstantTimeHash(_h);
        };
        return stdgo._internal.crypto.hmac.Hmac_new_.new_(_h, _key);
    }