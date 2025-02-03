package stdgo.runtime.debug;
@:structInit @:using(stdgo.runtime.debug.Debug.GCStats_static_extension) abstract GCStats(stdgo._internal.runtime.debug.Debug_GCStats.GCStats) from stdgo._internal.runtime.debug.Debug_GCStats.GCStats to stdgo._internal.runtime.debug.Debug_GCStats.GCStats {
    public var lastGC(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_lastGC():stdgo._internal.time.Time_Time.Time return this.lastGC;
    function set_lastGC(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.lastGC = v;
        return v;
    }
    public var numGC(get, set) : haxe.Int64;
    function get_numGC():haxe.Int64 return this.numGC;
    function set_numGC(v:haxe.Int64):haxe.Int64 {
        this.numGC = (v : stdgo.GoInt64);
        return v;
    }
    public var pauseTotal(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_pauseTotal():stdgo._internal.time.Time_Duration.Duration return this.pauseTotal;
    function set_pauseTotal(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.pauseTotal = v;
        return v;
    }
    public var pause(get, set) : Array<stdgo._internal.time.Time_Duration.Duration>;
    function get_pause():Array<stdgo._internal.time.Time_Duration.Duration> return [for (i in this.pause) i];
    function set_pause(v:Array<stdgo._internal.time.Time_Duration.Duration>):Array<stdgo._internal.time.Time_Duration.Duration> {
        this.pause = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
        return v;
    }
    public var pauseEnd(get, set) : Array<stdgo._internal.time.Time_Time.Time>;
    function get_pauseEnd():Array<stdgo._internal.time.Time_Time.Time> return [for (i in this.pauseEnd) i];
    function set_pauseEnd(v:Array<stdgo._internal.time.Time_Time.Time>):Array<stdgo._internal.time.Time_Time.Time> {
        this.pauseEnd = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_Time.Time>);
        return v;
    }
    public var pauseQuantiles(get, set) : Array<stdgo._internal.time.Time_Duration.Duration>;
    function get_pauseQuantiles():Array<stdgo._internal.time.Time_Duration.Duration> return [for (i in this.pauseQuantiles) i];
    function set_pauseQuantiles(v:Array<stdgo._internal.time.Time_Duration.Duration>):Array<stdgo._internal.time.Time_Duration.Duration> {
        this.pauseQuantiles = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
        return v;
    }
    public function new(?lastGC:stdgo._internal.time.Time_Time.Time, ?numGC:haxe.Int64, ?pauseTotal:stdgo._internal.time.Time_Duration.Duration, ?pause:Array<stdgo._internal.time.Time_Duration.Duration>, ?pauseEnd:Array<stdgo._internal.time.Time_Time.Time>, ?pauseQuantiles:Array<stdgo._internal.time.Time_Duration.Duration>) this = new stdgo._internal.runtime.debug.Debug_GCStats.GCStats(lastGC, (numGC : stdgo.GoInt64), pauseTotal, ([for (i in pause) i] : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>), ([for (i in pauseEnd) i] : stdgo.Slice<stdgo._internal.time.Time_Time.Time>), ([for (i in pauseQuantiles) i] : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
