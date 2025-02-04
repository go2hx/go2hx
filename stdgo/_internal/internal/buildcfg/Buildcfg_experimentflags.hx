package stdgo._internal.internal.buildcfg;
@:structInit @:using(stdgo._internal.internal.buildcfg.Buildcfg_experimentflags_static_extension.ExperimentFlags_static_extension) class ExperimentFlags {
    @:embedded
    public var flags : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags = ({} : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags);
    public var _baseline : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags = ({} : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags);
    public function new(?flags:stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags, ?_baseline:stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags) {
        if (flags != null) this.flags = flags;
        if (_baseline != null) this._baseline = _baseline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExperimentFlags(flags, _baseline);
    }
}
