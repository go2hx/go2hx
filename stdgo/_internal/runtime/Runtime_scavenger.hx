package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_scavenger_static_extension.Scavenger_static_extension) class Scavenger {
    public var sleep : stdgo.GoInt64 -> stdgo.GoInt64 = null;
    public var scavenge : stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; } = null;
    public var shouldStop : () -> Bool = null;
    public var goMaxProcs : () -> stdgo.GoInt32 = null;
    public function new(?sleep:stdgo.GoInt64 -> stdgo.GoInt64, ?scavenge:stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; }, ?shouldStop:() -> Bool, ?goMaxProcs:() -> stdgo.GoInt32) {
        if (sleep != null) this.sleep = sleep;
        if (scavenge != null) this.scavenge = scavenge;
        if (shouldStop != null) this.shouldStop = shouldStop;
        if (goMaxProcs != null) this.goMaxProcs = goMaxProcs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scavenger(sleep, scavenge, shouldStop, goMaxProcs);
    }
}
