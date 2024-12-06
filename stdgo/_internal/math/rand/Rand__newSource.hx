package stdgo._internal.math.rand;
function _newSource(_seed:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource> {
        var _rng:stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource = ({} : stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource);
        var _rng__pointer__ = (stdgo.Go.setRef(_rng) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        var _rng__pointer__ = (stdgo.Go.setRef(_rng) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        var _rng__pointer__ = (stdgo.Go.setRef(_rng) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        var _rng__pointer__ = (stdgo.Go.setRef(_rng) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        _rng.seed(_seed);
        return _rng__pointer__;
    }
