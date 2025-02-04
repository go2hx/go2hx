package stdgo._internal.math.big;
function _mulWW(_x:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } {
        var _z1 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _z0 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul((_x : stdgo.GoUInt), (_y : stdgo.GoUInt)), _hi:stdgo.GoUInt = __tmp__._0, _lo:stdgo.GoUInt = __tmp__._1;
        return {
            final __tmp__:{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } = { _0 : (_hi : stdgo._internal.math.big.Big_word.Word), _1 : (_lo : stdgo._internal.math.big.Big_word.Word) };
            _z1 = __tmp__._0;
            _z0 = __tmp__._1;
            __tmp__;
        };
    }
