package stdgo._internal.math.big;
function _divWVW(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _xn:stdgo._internal.math.big.Big_word.Word, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _r = _xn;
        if ((_x.length) == ((1 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.math.bits.Bits_div.div((_r : stdgo.GoUInt), (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt), (_y : stdgo.GoUInt)), _qq:stdgo.GoUInt = __tmp__._0, _rr:stdgo.GoUInt = __tmp__._1;
            _z[(0 : stdgo.GoInt)] = (_qq : stdgo._internal.math.big.Big_word.Word);
            return _r = (_rr : stdgo._internal.math.big.Big_word.Word);
        };
        var _rec = (stdgo._internal.math.big.Big__reciprocalword._reciprocalWord(_y) : stdgo._internal.math.big.Big_word.Word);
        {
            var _i = ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.big.Big__divww._divWW(_r, _x[(_i : stdgo.GoInt)], _y, _rec);
                    _z[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                _i--;
            };
        };
        return _r;
    }
