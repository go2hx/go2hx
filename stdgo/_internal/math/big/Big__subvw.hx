package stdgo._internal.math.big;
function _subVW(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _fn = stdgo._internal.math.big.Big__subvw_g._subVW_g;
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_decl_pure.go#L30"
        if (((_z.length) > (32 : stdgo.GoInt) : Bool)) {
            _fn = stdgo._internal.math.big.Big__subvwlarge._subVWlarge;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_decl_pure.go#L33"
        return _c = _fn(_z, _x, _y);
    }
