package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testStandardExponentialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _seed in _internal.math.rand_test.Rand_test__testSeeds._testSeeds) {
            _internal.math.rand_test.Rand_test__testExponentialDistribution._testExponentialDistribution(_t, (10000 : stdgo.GoInt), (1 : stdgo.GoFloat64), _seed);
        };
    }
