package stdgo._internal.math.big;
function _makeFunVW(_f:(stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, stdgo.GoUInt) -> stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_funvw.T_funVW {
        return function(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _s:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
            var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            return _c = _f(_z, _x, (_s : stdgo.GoUInt));
        };
    }
