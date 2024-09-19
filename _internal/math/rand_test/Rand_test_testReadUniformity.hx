package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testReadUniformity(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testBufferSizes = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt), (64 : stdgo.GoInt), (1024 : stdgo.GoInt), (65536 : stdgo.GoInt), (1048576 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__4 => _seed in _internal.math.rand_test.Rand_test__testSeeds._testSeeds) {
            for (__5 => _n in _testBufferSizes) {
                _internal.math.rand_test.Rand_test__testReadUniformity._testReadUniformity(_t, _n, _seed);
            };
        };
    }
