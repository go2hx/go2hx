package stdgo._internal.math.rand;
function seed(_seed:stdgo.GoInt64):Void {
        var _orig = stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.load();
        //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L398"
        if (({
            final value = _orig;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L399"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _orig ?? throw "null pointer dereference")._src) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : false };
                }, __14 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L400"
                    _orig.seed(_seed);
                    //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L401"
                    return;
                };
            };
        };
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>)));
        //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L413"
        _r.seed(_seed);
        //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L415"
        if (!stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.compareAndSwap(_orig, _r)) {
            //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L417"
            stdgo._internal.math.rand.Rand_seed.seed(_seed);
        };
    }
