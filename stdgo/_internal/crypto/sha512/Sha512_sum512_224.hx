package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function sum512_224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d = ({ _function : (14u32 : stdgo._internal.crypto.Crypto_Hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest);
        @:check2 _d.reset();
        @:check2 _d.write(_data);
        var _sum = @:check2 _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }
