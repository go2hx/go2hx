package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testNonStandardExponentialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _rate = (0.05 : stdgo.GoFloat64);
            stdgo.Go.cfor((_rate < (10 : stdgo.GoFloat64) : Bool), _rate = (_rate * (2 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                for (__4 => _seed in _internal.math.rand_test.Rand_test__testSeeds._testSeeds) {
                    _internal.math.rand_test.Rand_test__testExponentialDistribution._testExponentialDistribution(_t, (10000 : stdgo.GoInt), _rate, _seed);
                    if (stdgo._internal.testing.Testing_short.short()) {
                        break;
                    };
                };
            });
        };
    }
