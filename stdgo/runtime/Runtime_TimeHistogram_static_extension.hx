package stdgo.runtime;
class TimeHistogram_static_extension {
    static public function record(_th:TimeHistogram, _duration:haxe.Int64):Void {
        final _th = (_th : stdgo.Ref<stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram>);
        final _duration = (_duration : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_TimeHistogram_static_extension.TimeHistogram_static_extension.record(_th, _duration);
    }
    static public function count(_th:TimeHistogram, _bucket:StdTypes.Int, _subBucket:StdTypes.Int):stdgo.Tuple<haxe.UInt64, Bool> {
        final _th = (_th : stdgo.Ref<stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram>);
        final _bucket = (_bucket : stdgo.GoInt);
        final _subBucket = (_subBucket : stdgo.GoInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_TimeHistogram_static_extension.TimeHistogram_static_extension.count(_th, _bucket, _subBucket);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
