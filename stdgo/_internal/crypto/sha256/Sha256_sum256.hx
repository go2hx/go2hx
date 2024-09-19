package stdgo._internal.crypto.sha256;
function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_sha256.sha256(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest = ({} : stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest);
        _d.reset();
        _d.write(_data);
        return _d._checkSum()?.__copy__();
    }
