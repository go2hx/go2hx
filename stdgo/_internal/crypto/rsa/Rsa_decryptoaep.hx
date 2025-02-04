package stdgo._internal.crypto.rsa;
function decryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.rsa.Rsa__decryptoaep._decryptOAEP(_hash, _hash, _random, _priv, _ciphertext, _label);
    }
