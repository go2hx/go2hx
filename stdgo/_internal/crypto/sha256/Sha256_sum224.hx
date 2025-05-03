package stdgo._internal.crypto.sha256;
function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L265"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L266"
            return stdgo._internal.crypto.internal.boring.Boring_sha224.sHA224(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest = ({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest);
        _d._is224 = true;
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L270"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L271"
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L274"
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }
