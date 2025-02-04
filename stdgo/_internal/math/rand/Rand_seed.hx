package stdgo._internal.math.rand;
function seed(_seed:stdgo.GoInt64):Void {
        var _orig = @:check2 stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.load();
        if ((_orig != null && ((_orig : Dynamic).__nil__ == null || !(_orig : Dynamic).__nil__))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _orig ?? throw "null pointer dereference")._src) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : false };
                }, __14 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    @:check2r _orig.seed(_seed);
                    return;
                };
            };
        };
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>)));
        @:check2r _r.seed(_seed);
        if (!@:check2 stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.compareAndSwap(_orig, _r)) {
            stdgo._internal.math.rand.Rand_seed.seed(_seed);
        };
    }
