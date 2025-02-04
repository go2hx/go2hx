package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_heapstatsaggregate_static_extension.T_heapStatsAggregate_static_extension) class T_heapStatsAggregate {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _merge(get, never) : stdgo.Ref<stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__merge():stdgo.Ref<stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta> -> Void return @:check32 this.new._merge;
    public function __copy__() {
        return new T_heapStatsAggregate();
    }
}
