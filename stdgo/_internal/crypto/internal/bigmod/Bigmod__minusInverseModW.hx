package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _minusInverseModW(_x:stdgo.GoUInt):stdgo.GoUInt {
        var _y = (_x : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                _y = (_y * (((2u32 : stdgo.GoUInt) - (_x * _y : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        return -_y;
    }
