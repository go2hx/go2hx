package stdgo._internal.math.big;
function _delta(_r:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).sub(_r, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFloat64(_f));
        return _d.abs(_d);
    }
