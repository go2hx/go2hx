package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_fuzzResponse {
    public var totalDuration : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var interestingDuration : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var count : stdgo.GoInt64 = 0;
    public var coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var err : stdgo.GoString = "";
    public var internalErr : stdgo.GoString = "";
    public function new(?totalDuration:stdgo._internal.time.Time_Duration.Duration, ?interestingDuration:stdgo._internal.time.Time_Duration.Duration, ?count:stdgo.GoInt64, ?coverageData:stdgo.Slice<stdgo.GoUInt8>, ?err:stdgo.GoString, ?internalErr:stdgo.GoString) {
        if (totalDuration != null) this.totalDuration = totalDuration;
        if (interestingDuration != null) this.interestingDuration = interestingDuration;
        if (count != null) this.count = count;
        if (coverageData != null) this.coverageData = coverageData;
        if (err != null) this.err = err;
        if (internalErr != null) this.internalErr = internalErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fuzzResponse(totalDuration, interestingDuration, count, coverageData, err, internalErr);
    }
}
