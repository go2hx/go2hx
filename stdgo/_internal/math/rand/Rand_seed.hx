package stdgo._internal.math.rand;
function seed(_seed:stdgo.GoInt64):Void {
        var _orig = stdgo._internal.math.rand.Rand__globalRandGenerator._globalRandGenerator.load();
        if (_orig != null && ((_orig : Dynamic).__nil__ == null || !(_orig : Dynamic).__nil__)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_orig._src) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>)) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>), _1 : false };
                }, __14 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _orig.seed(_seed);
                    return;
                };
            };
        };
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>)));
        _r.seed(_seed);
        if (!stdgo._internal.math.rand.Rand__globalRandGenerator._globalRandGenerator.compareAndSwap(_orig, _r)) {
            stdgo._internal.math.rand.Rand_seed.seed(_seed);
        };
    }
