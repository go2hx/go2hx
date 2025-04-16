package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_heapstatsaggregate_static_extension.T_heapStatsAggregate_static_extension) class T_heapStatsAggregate {
    @:embedded
    public var _heapStatsDelta : stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta = ({} : stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta);
    public function new(?_heapStatsDelta:stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta) {
        if (_heapStatsDelta != null) this._heapStatsDelta = _heapStatsDelta;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _merge(get, never) : stdgo.Ref<stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__merge():stdgo.Ref<stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta> -> Void return @:check32 this._heapStatsDelta._merge;
    public function __copy__() {
        return new T_heapStatsAggregate(_heapStatsDelta);
    }
}
