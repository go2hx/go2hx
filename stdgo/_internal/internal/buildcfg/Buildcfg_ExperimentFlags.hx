package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension) class ExperimentFlags {
    @:embedded
    public var flags : stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags = ({} : stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags);
    public var _baseline : stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags = ({} : stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags);
    public function new(?flags:stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags, ?_baseline:stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags) {
        if (flags != null) this.flags = flags;
        if (_baseline != null) this._baseline = _baseline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExperimentFlags(flags, _baseline);
    }
}
