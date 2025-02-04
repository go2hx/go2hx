package stdgo._internal.math.big;
function _subVV_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        {
            var _i = (0 : stdgo.GoInt);
            while ((((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool) && (_i < (_y.length) : Bool) : Bool)) {
                var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_y[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_c : stdgo.GoUInt)), _zi:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
_z[(_i : stdgo.GoInt)] = (_zi : stdgo._internal.math.big.Big_word.Word);
_c = (_cc : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        return _c;
    }
