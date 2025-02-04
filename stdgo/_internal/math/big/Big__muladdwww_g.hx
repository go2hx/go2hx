package stdgo._internal.math.big;
function _mulAddWWW_g(_x:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word, _c:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } {
        var _z1 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _z0 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul((_x : stdgo.GoUInt), (_y : stdgo.GoUInt)), _hi:stdgo.GoUInt = __tmp__._0, _lo:stdgo.GoUInt = __tmp__._1;
        var _cc:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_lo, (_c : stdgo.GoUInt), (0u32 : stdgo.GoUInt));
            _lo = @:tmpset0 __tmp__._0;
            _cc = @:tmpset0 __tmp__._1;
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } = { _0 : ((_hi + _cc : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _1 : (_lo : stdgo._internal.math.big.Big_word.Word) };
            _z1 = __tmp__._0;
            _z0 = __tmp__._1;
            __tmp__;
        };
    }
