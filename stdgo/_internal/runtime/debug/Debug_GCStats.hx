package stdgo._internal.runtime.debug;
@:structInit class GCStats {
    public var lastGC : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var numGC : stdgo.GoInt64 = 0;
    public var pauseTotal : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var pause : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration> = (null : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
    public var pauseEnd : stdgo.Slice<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Slice<stdgo._internal.time.Time_Time.Time>);
    public var pauseQuantiles : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration> = (null : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
    public function new(?lastGC:stdgo._internal.time.Time_Time.Time, ?numGC:stdgo.GoInt64, ?pauseTotal:stdgo._internal.time.Time_Duration.Duration, ?pause:stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>, ?pauseEnd:stdgo.Slice<stdgo._internal.time.Time_Time.Time>, ?pauseQuantiles:stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>) {
        if (lastGC != null) this.lastGC = lastGC;
        if (numGC != null) this.numGC = numGC;
        if (pauseTotal != null) this.pauseTotal = pauseTotal;
        if (pause != null) this.pause = pause;
        if (pauseEnd != null) this.pauseEnd = pauseEnd;
        if (pauseQuantiles != null) this.pauseQuantiles = pauseQuantiles;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GCStats(lastGC, numGC, pauseTotal, pause, pauseEnd, pauseQuantiles);
    }
}
