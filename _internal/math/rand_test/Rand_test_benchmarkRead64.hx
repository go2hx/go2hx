package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function benchmarkRead64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1i64 : stdgo.GoInt64)));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.resetTimer();
        {
            var _n = (_b.n : stdgo.GoInt);
            stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                _r.read(_buf);
            });
        };
    }