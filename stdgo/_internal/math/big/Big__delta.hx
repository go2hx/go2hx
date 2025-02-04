package stdgo._internal.math.big;
function _delta(_r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        var _d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).sub(_r, @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFloat64(_f));
        return @:check2r _d.abs(_d);
    }
