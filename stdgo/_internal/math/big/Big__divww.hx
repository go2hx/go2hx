package stdgo._internal.math.big;
function _divWW(_x1:stdgo._internal.math.big.Big_word.Word, _x0:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word, _m:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } {
        var _q = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _s = (stdgo._internal.math.big.Big__nlz._nlz(_y) : stdgo.GoUInt);
        if (_s != ((0u32 : stdgo.GoUInt))) {
            _x1 = ((_x1 << _s : stdgo._internal.math.big.Big_word.Word) | (_x0 >> (((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
            _x0 = (_x0 << (_s) : stdgo._internal.math.big.Big_word.Word);
            _y = (_y << (_s) : stdgo._internal.math.big.Big_word.Word);
        };
        var _d = (_y : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul((_m : stdgo.GoUInt), (_x1 : stdgo.GoUInt)), _t1:stdgo.GoUInt = __tmp__._0, _t0:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_t0, (_x0 : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), __8:stdgo.GoUInt = __tmp__._0, _c:stdgo.GoUInt = __tmp__._1;
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_t1, (_x1 : stdgo.GoUInt), _c);
            _t1 = @:tmpset0 __tmp__._0;
        };
        var _qq = (_t1 : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul(_d, _qq), _dq1:stdgo.GoUInt = __tmp__._0, _dq0:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x0 : stdgo.GoUInt), _dq0, (0u32 : stdgo.GoUInt)), _r0:stdgo.GoUInt = __tmp__._0, _b:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x1 : stdgo.GoUInt), _dq1, _b), _r1:stdgo.GoUInt = __tmp__._0, __9:stdgo.GoUInt = __tmp__._1;
        if (_r1 != ((0u32 : stdgo.GoUInt))) {
            _qq++;
            _r0 = (_r0 - (_d) : stdgo.GoUInt);
        };
        if ((_r0 >= _d : Bool)) {
            _qq++;
            _r0 = (_r0 - (_d) : stdgo.GoUInt);
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } = { _0 : (_qq : stdgo._internal.math.big.Big_word.Word), _1 : ((_r0 >> _s : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word) };
            _q = __tmp__._0;
            _r = __tmp__._1;
            __tmp__;
        };
    }
