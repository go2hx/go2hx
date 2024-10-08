package stdgo._internal.internal.buildcfg;
@:structInit @:using(stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension) class ExperimentFlags {
    @:embedded
    public var flags : _internal.internal.goexperiment.Goexperiment_Flags.Flags = ({} : _internal.internal.goexperiment.Goexperiment_Flags.Flags);
    public var _baseline : _internal.internal.goexperiment.Goexperiment_Flags.Flags = ({} : _internal.internal.goexperiment.Goexperiment_Flags.Flags);
    public function new(?flags:_internal.internal.goexperiment.Goexperiment_Flags.Flags, ?_baseline:_internal.internal.goexperiment.Goexperiment_Flags.Flags) {
        if (flags != null) this.flags = flags;
        if (_baseline != null) this._baseline = _baseline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExperimentFlags(flags, _baseline);
    }
}
