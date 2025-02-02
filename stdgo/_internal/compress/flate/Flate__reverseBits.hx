package stdgo._internal.compress.flate;
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoUInt8):stdgo.GoUInt16 {
        return stdgo._internal.math.bits.Bits_reverse16.reverse16((_number << (((16 : stdgo.GoUInt8) - _bitLength : stdgo.GoUInt8)) : stdgo.GoUInt16));
    }
