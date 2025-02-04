package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_cpustatsaggregate_static_extension.T_cpuStatsAggregate_static_extension) class T_cpuStatsAggregate {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _accumulate(get, never) : (stdgo.GoInt64, Bool) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__accumulate():(stdgo.GoInt64, Bool) -> Void return @:check32 this.new._accumulate;
    public function __copy__() {
        return new T_cpuStatsAggregate();
    }
}
