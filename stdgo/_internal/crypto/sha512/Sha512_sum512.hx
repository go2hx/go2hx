package stdgo._internal.crypto.sha512;
function sum512(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L344"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L345"
            return stdgo._internal.crypto.internal.boring.Boring_sha512.sHA512(_data)?.__copy__();
        };
        var _d = ({ _function : (7u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L348"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L349"
        _d.write(_data);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L350"
        return _d._checkSum()?.__copy__();
    }
