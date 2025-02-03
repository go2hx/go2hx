package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.Scavenger_static_extension) abstract Scavenger(stdgo._internal.runtime.Runtime_Scavenger.Scavenger) from stdgo._internal.runtime.Runtime_Scavenger.Scavenger to stdgo._internal.runtime.Runtime_Scavenger.Scavenger {
    public var sleep(get, set) : stdgo.GoInt64 -> stdgo.GoInt64;
    function get_sleep():stdgo.GoInt64 -> stdgo.GoInt64 return _0 -> this.sleep(_0);
    function set_sleep(v:stdgo.GoInt64 -> stdgo.GoInt64):stdgo.GoInt64 -> stdgo.GoInt64 {
        this.sleep = v;
        return v;
    }
    public var scavenge(get, set) : stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; };
    function get_scavenge():stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; } return _0 -> this.scavenge(_0);
    function set_scavenge(v:stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; }):stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; } {
        this.scavenge = v;
        return v;
    }
    public var shouldStop(get, set) : () -> Bool;
    function get_shouldStop():() -> Bool return () -> this.shouldStop();
    function set_shouldStop(v:() -> Bool):() -> Bool {
        this.shouldStop = v;
        return v;
    }
    public var goMaxProcs(get, set) : () -> stdgo.GoInt32;
    function get_goMaxProcs():() -> stdgo.GoInt32 return () -> this.goMaxProcs();
    function set_goMaxProcs(v:() -> stdgo.GoInt32):() -> stdgo.GoInt32 {
        this.goMaxProcs = v;
        return v;
    }
    public function new(?sleep:stdgo.GoInt64 -> stdgo.GoInt64, ?scavenge:stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; }, ?shouldStop:() -> Bool, ?goMaxProcs:() -> stdgo.GoInt32) this = new stdgo._internal.runtime.Runtime_Scavenger.Scavenger(sleep, scavenge, shouldStop, goMaxProcs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
