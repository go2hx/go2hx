package stdgo._internal.math.big;
function _delta(_r:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        var _d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).sub(_r, @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFloat64(_f));
        return @:check2r _d.abs(_d);
    }
