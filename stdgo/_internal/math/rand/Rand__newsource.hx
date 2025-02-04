package stdgo._internal.math.rand;
function _newSource(_seed:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> {
        var _rng:stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource = ({} : stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource);
        @:check2 _rng.seed(_seed);
        return (stdgo.Go.setRef(_rng) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
    }
