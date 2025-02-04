package stdgo._internal.crypto.md5;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d:stdgo._internal.crypto.md5.Md5_t_digest.T_digest = ({} : stdgo._internal.crypto.md5.Md5_t_digest.T_digest);
        @:check2 _d.reset();
        @:check2 _d.write(_data);
        return @:check2 _d._checkSum()?.__copy__();
    }
