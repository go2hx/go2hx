package stdgo._internal.math.big;
function _makeFunVW(_f:(stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, stdgo.GoUInt) -> stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_T_funVW.T_funVW {
        return function(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _s:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
            var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
            return _f(_z, _x, (_s : stdgo.GoUInt));
        };
    }
