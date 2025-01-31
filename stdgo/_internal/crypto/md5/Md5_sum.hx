package stdgo._internal.crypto.md5;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d:stdgo._internal.crypto.md5.Md5_T_digest.T_digest = ({} : stdgo._internal.crypto.md5.Md5_T_digest.T_digest);
        @:check2 _d.reset();
        @:check2 _d.write(_data);
        return @:check2 _d._checkSum()?.__copy__();
    }
