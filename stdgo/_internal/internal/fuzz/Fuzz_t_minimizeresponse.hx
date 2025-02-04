package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse_static_extension.T_minimizeResponse_static_extension) class T_minimizeResponse {
    public var wroteToMem : Bool = false;
    public var err : stdgo.GoString = "";
    public var coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var duration : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var count : stdgo.GoInt64 = 0;
    public function new(?wroteToMem:Bool, ?err:stdgo.GoString, ?coverageData:stdgo.Slice<stdgo.GoUInt8>, ?duration:stdgo._internal.time.Time_duration.Duration, ?count:stdgo.GoInt64) {
        if (wroteToMem != null) this.wroteToMem = wroteToMem;
        if (err != null) this.err = err;
        if (coverageData != null) this.coverageData = coverageData;
        if (duration != null) this.duration = duration;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_minimizeResponse(wroteToMem, err, coverageData, duration, count);
    }
}
