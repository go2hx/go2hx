package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testNonStandardNormalValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _sdmax = (1000 : stdgo.GoFloat64);
        var _mmax = (1000 : stdgo.GoFloat64);
        if (stdgo._internal.testing.Testing_short.short()) {
            _sdmax = (5 : stdgo.GoFloat64);
            _mmax = (5 : stdgo.GoFloat64);
        };
        {
            var _sd = (0.5 : stdgo.GoFloat64);
            stdgo.Go.cfor((_sd < _sdmax : Bool), _sd = (_sd * (2 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _m = (0.5 : stdgo.GoFloat64);
                    stdgo.Go.cfor((_m < _mmax : Bool), _m = (_m * (2 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                        for (__4 => _seed in _internal.math.rand_test.Rand_test__testSeeds._testSeeds) {
                            _internal.math.rand_test.Rand_test__testNormalDistribution._testNormalDistribution(_t, (10000 : stdgo.GoInt), _m, _sd, _seed);
                            if (stdgo._internal.testing.Testing_short.short()) {
                                break;
                            };
                        };
                    });
                };
            });
        };
    }
