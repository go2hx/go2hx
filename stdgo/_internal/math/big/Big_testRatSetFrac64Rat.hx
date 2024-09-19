package stdgo._internal.math.big;
function testRatSetFrac64Rat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__setFrac64Tests._setFrac64Tests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFrac64(_test._a, _test._b);
            if (_x.ratString() != (_test._out)) {
                _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x.ratString()), stdgo.Go.toInterface(_test._out));
            };
        };
    }
