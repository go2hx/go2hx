package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _compareFloat32Slices(_s1:stdgo.Slice<stdgo.GoFloat32>, _s2:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoInt {
        if ((_s1.length) != ((_s2.length))) {
            if (((_s1.length) > (_s2.length) : Bool)) {
                return ((_s2.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            return ((_s1.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        for (_i => _ in _s1) {
            if (!_internal.math.rand_test.Rand_test__nearEqual._nearEqual((_s1[(_i : stdgo.GoInt)] : stdgo.GoFloat64), (_s2[(_i : stdgo.GoInt)] : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1e-07 : stdgo.GoFloat64))) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
