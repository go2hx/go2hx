package stdgo._internal.math.rand;
function _globalRand():stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> {
        {
            var _r = @:check2 stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.load();
            if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
                return _r;
            };
        };
        var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        if (@:check2r stdgo._internal.math.rand.Rand__randautoseed._randautoseed.value() == (("0" : stdgo.GoString))) {
            @:check2r stdgo._internal.math.rand.Rand__randautoseed._randautoseed.incNonDefault();
            _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>)));
            @:check2r _r.seed((1i64 : stdgo.GoInt64));
        } else {
            _r = (stdgo.Go.setRef(({ _src : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource() : stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>)), _s64 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource() : stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>)) } : stdgo._internal.math.rand.Rand_rand.Rand)) : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        };
        if (!@:check2 stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.compareAndSwap(null, _r)) {
            return @:check2 stdgo._internal.math.rand.Rand__globalrandgenerator._globalRandGenerator.load();
        };
        return _r;
    }
