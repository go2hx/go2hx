package stdgo.internal.buildcfg;
@:structInit @:using(stdgo.internal.buildcfg.Buildcfg.ExperimentFlags_static_extension) abstract ExperimentFlags(stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags) from stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags to stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags {
    public var flags(get, set) : stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags;
    function get_flags():stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags return this.flags;
    function set_flags(v:stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags):stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags {
        this.flags = v;
        return v;
    }
    public var _baseline(get, set) : stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags;
    function get__baseline():stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags return this._baseline;
    function set__baseline(v:stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags):stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags {
        this._baseline = v;
        return v;
    }
    public function new(?flags:stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags, ?_baseline:stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags) this = new stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags(flags, _baseline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
