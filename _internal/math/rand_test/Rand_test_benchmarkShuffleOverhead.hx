package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function benchmarkShuffleOverhead(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1i64 : stdgo.GoInt64)));
        {
            var _n = (_b.n : stdgo.GoInt);
            stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                _r.shuffle((52 : stdgo.GoInt), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                    if (((((_i < (0 : stdgo.GoInt) : Bool) || (_i >= (52 : stdgo.GoInt) : Bool) : Bool) || (_j < (0 : stdgo.GoInt) : Bool) : Bool) || (_j >= (52 : stdgo.GoInt) : Bool) : Bool)) {
                        _b.fatalf(("bad swap(%d, %d)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    };
                });
            });
        };
    }
