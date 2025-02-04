package stdgo._internal.math.big;
function testRatSetFrac64Rat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__setfrac64tests._setFrac64Tests) {
            var _x = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac64(_test._a, _test._b);
            if (@:check2r _x.ratString() != (_test._out)) {
                @:check2r _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(@:check2r _x.ratString()), stdgo.Go.toInterface(_test._out));
            };
        };
    }
