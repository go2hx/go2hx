package stdgo.math.rand;
class T_rngSource_static_extension {
    static public function uint64(_rng:T_rngSource):haxe.UInt64 {
        final _rng = (_rng : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        return stdgo._internal.math.rand.Rand_T_rngSource_static_extension.T_rngSource_static_extension.uint64(_rng);
    }
    static public function int63(_rng:T_rngSource):haxe.Int64 {
        final _rng = (_rng : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        return stdgo._internal.math.rand.Rand_T_rngSource_static_extension.T_rngSource_static_extension.int63(_rng);
    }
    static public function seed(_rng:T_rngSource, _seed:haxe.Int64):Void {
        final _rng = (_rng : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_T_rngSource_static_extension.T_rngSource_static_extension.seed(_rng, _seed);
    }
}
