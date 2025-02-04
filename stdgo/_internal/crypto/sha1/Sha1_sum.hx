package stdgo._internal.crypto.sha1;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.sha1.Sha1__boringsha1._boringSHA1(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest = ({} : stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest);
        @:check2 _d.reset();
        @:check2 _d.write(_data);
        return @:check2 _d._checkSum()?.__copy__();
    }
