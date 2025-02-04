package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.TimeHistogram_asInterface) class TimeHistogram_static_extension {
    @:keep
    @:tdfield
    static public function record( _th:stdgo.Ref<stdgo._internal.runtime.Runtime_timehistogram.TimeHistogram>, _duration:stdgo.GoInt64):Void throw "TimeHistogram:runtime.record is not yet implemented";
    @:keep
    @:tdfield
    static public function count( _th:stdgo.Ref<stdgo._internal.runtime.Runtime_timehistogram.TimeHistogram>, _bucket:stdgo.GoInt, _subBucket:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw "TimeHistogram:runtime.count is not yet implemented";
}
