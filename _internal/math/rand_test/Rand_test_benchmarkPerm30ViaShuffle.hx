package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function benchmarkPerm30ViaShuffle(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1i64 : stdgo.GoInt64)));
        {
            var _n = (_b.n : stdgo.GoInt);
            stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                var _p = (new stdgo.Slice<stdgo.GoInt>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                for (_i => _ in _p) {
                    _p[(_i : stdgo.GoInt)] = _i;
                };
                _r.shuffle((30 : stdgo.GoInt), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                    {
                        final __tmp__0 = _p[(_j : stdgo.GoInt)];
                        final __tmp__1 = _p[(_i : stdgo.GoInt)];
                        final __tmp__2 = _p;
                        final __tmp__3 = (_i : stdgo.GoInt);
                        final __tmp__4 = _p;
                        final __tmp__5 = (_j : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                });
            });
        };
    }
