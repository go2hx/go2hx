package stdgo._internal.math.big;
function _reciprocalWord(_d1:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _u = ((_d1 << stdgo._internal.math.big.Big__nlz._nlz(_d1) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt);
        var _x1 = (-1 ^ _u : stdgo.GoUInt);
        var _x0 = ((-1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_div.div(_x1, _x0, _u), _rec:stdgo.GoUInt = __tmp__._0, __8:stdgo.GoUInt = __tmp__._1;
        return (_rec : stdgo._internal.math.big.Big_word.Word);
    }
