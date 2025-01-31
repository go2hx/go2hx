package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function sum512(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_sHA512.sHA512(_data)?.__copy__();
        };
        var _d = ({ _function : (7u32 : stdgo._internal.crypto.Crypto_Hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest);
        @:check2 _d.reset();
        @:check2 _d.write(_data);
        return @:check2 _d._checkSum()?.__copy__();
    }
