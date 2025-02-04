package stdgo._internal.math.big;
function _addVW(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _fn = stdgo._internal.math.big.Big__addvw_g._addVW_g;
        if (((_z.length) > (32 : stdgo.GoInt) : Bool)) {
            _fn = stdgo._internal.math.big.Big__addvwlarge._addVWlarge;
        };
        return _c = _fn(_z, _x, _y);
    }
