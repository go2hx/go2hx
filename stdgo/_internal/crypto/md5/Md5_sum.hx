package stdgo._internal.crypto.md5;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d:stdgo._internal.crypto.md5.Md5_t_digest.T_digest = ({} : stdgo._internal.crypto.md5.Md5_t_digest.T_digest);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5.go#L180"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5.go#L181"
        _d.write(_data);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5.go#L182"
        return _d._checkSum()?.__copy__();
    }
