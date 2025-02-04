package stdgo._internal.crypto.sha256;
function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_sha256.sHA256(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest = ({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest);
        @:check2 _d.reset();
        @:check2 _d.write(_data);
        return @:check2 _d._checkSum()?.__copy__();
    }
