package stdgo._internal.math.big;
function testRatSetFrac64Rat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L271"
        for (_i => _test in stdgo._internal.math.big.Big__setfrac64tests._setFrac64Tests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac64(_test._a, _test._b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L273"
            if (_x.ratString() != (_test._out)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L274"
                _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x.ratString()), stdgo.Go.toInterface(_test._out));
            };
        };
    }
