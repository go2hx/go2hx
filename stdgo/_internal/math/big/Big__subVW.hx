package stdgo._internal.math.big;
function _subVW(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _y:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        var _fn = stdgo._internal.math.big.Big__subVW_g._subVW_g;
        if (((_z.length) > (32 : stdgo.GoInt) : Bool)) {
            _fn = stdgo._internal.math.big.Big__subVWlarge._subVWlarge;
        };
        return _c = _fn(_z, _x, _y);
    }
