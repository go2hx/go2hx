package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testStandardNormalValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _seed in _internal.math.rand_test.Rand_test__testSeeds._testSeeds) {
            _internal.math.rand_test.Rand_test__testNormalDistribution._testNormalDistribution(_t, (10000 : stdgo.GoInt), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), _seed);
        };
    }
