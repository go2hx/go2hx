package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_fuzzArgs {
    public var timeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var limit : stdgo.GoInt64 = 0;
    public var warmup : Bool = false;
    public var coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:stdgo.GoInt64, ?warmup:Bool, ?coverageData:stdgo.Slice<stdgo.GoUInt8>) {
        if (timeout != null) this.timeout = timeout;
        if (limit != null) this.limit = limit;
        if (warmup != null) this.warmup = warmup;
        if (coverageData != null) this.coverageData = coverageData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fuzzArgs(timeout, limit, warmup, coverageData);
    }
}