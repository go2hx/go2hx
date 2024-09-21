package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _compareUint32Slices(_s1:stdgo.Slice<stdgo.GoUInt32>, _s2:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoInt {
        if ((_s1.length) != ((_s2.length))) {
            if (((_s1.length) > (_s2.length) : Bool)) {
                return ((_s2.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            return ((_s1.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        for (_i => _ in _s1) {
            if (_s1[(_i : stdgo.GoInt)] != (_s2[(_i : stdgo.GoInt)])) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
