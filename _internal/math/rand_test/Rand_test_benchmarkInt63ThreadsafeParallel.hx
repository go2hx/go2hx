package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function benchmarkInt63ThreadsafeParallel(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                stdgo._internal.math.rand.Rand_int63.int63();
            };
        });
    }
