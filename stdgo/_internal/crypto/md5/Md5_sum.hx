package stdgo._internal.crypto.md5;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d:stdgo._internal.crypto.md5.Md5_T_digest.T_digest = ({} : stdgo._internal.crypto.md5.Md5_T_digest.T_digest);
        _d.reset();
        _d.write(_data);
        return _d._checkSum()?.__copy__();
    }
