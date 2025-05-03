package stdgo._internal.crypto.sha512;
function sum512_256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d = ({ _function : (15u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L379"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L380"
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L383"
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }
