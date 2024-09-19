package stdgo._internal.math.big;
function parseFloat(_s:stdgo.GoString, _base:stdgo.GoInt, _prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_RoundingMode.RoundingMode):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode(_mode).parse(_s?.__copy__(), _base);
    }
