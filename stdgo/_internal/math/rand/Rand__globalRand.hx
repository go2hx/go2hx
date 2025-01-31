package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function _globalRand():stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> {
        {
            var _r = @:check2 stdgo._internal.math.rand.Rand__globalRandGenerator._globalRandGenerator.load();
            if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
                return _r;
            };
        };
        var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        if (@:check2r stdgo._internal.math.rand.Rand__randautoseed._randautoseed.value() == (("0" : stdgo.GoString))) {
            @:check2r stdgo._internal.math.rand.Rand__randautoseed._randautoseed.incNonDefault();
            _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>)));
            @:check2r _r.seed((1i64 : stdgo.GoInt64));
        } else {
            _r = (stdgo.Go.setRef(({ _src : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource() : stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>)), _s64 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource() : stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>)) } : stdgo._internal.math.rand.Rand_Rand.Rand)) : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        };
        if (!@:check2 stdgo._internal.math.rand.Rand__globalRandGenerator._globalRandGenerator.compareAndSwap(null, _r)) {
            return @:check2 stdgo._internal.math.rand.Rand__globalRandGenerator._globalRandGenerator.load();
        };
        return _r;
    }
