package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testShuffleSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1i64 : stdgo.GoInt64)));
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (1 : stdgo.GoInt) : Bool), _n++, {
                _r.shuffle(_n, function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                    _t.fatalf(("swap called, n=%d i=%d j=%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                });
            });
        };
    }
