package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function benchmarkInt63Threadsafe(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _n = (_b.n : stdgo.GoInt);
            stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                stdgo._internal.math.rand.Rand_int63.int63();
            });
        };
    }
