package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.GCControllerReviseDelta_static_extension) abstract GCControllerReviseDelta(stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta) from stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta to stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta {
    public var heapLive(get, set) : haxe.Int64;
    function get_heapLive():haxe.Int64 return this.heapLive;
    function set_heapLive(v:haxe.Int64):haxe.Int64 {
        this.heapLive = (v : stdgo.GoInt64);
        return v;
    }
    public var heapScan(get, set) : haxe.Int64;
    function get_heapScan():haxe.Int64 return this.heapScan;
    function set_heapScan(v:haxe.Int64):haxe.Int64 {
        this.heapScan = (v : stdgo.GoInt64);
        return v;
    }
    public var heapScanWork(get, set) : haxe.Int64;
    function get_heapScanWork():haxe.Int64 return this.heapScanWork;
    function set_heapScanWork(v:haxe.Int64):haxe.Int64 {
        this.heapScanWork = (v : stdgo.GoInt64);
        return v;
    }
    public var stackScanWork(get, set) : haxe.Int64;
    function get_stackScanWork():haxe.Int64 return this.stackScanWork;
    function set_stackScanWork(v:haxe.Int64):haxe.Int64 {
        this.stackScanWork = (v : stdgo.GoInt64);
        return v;
    }
    public var globalsScanWork(get, set) : haxe.Int64;
    function get_globalsScanWork():haxe.Int64 return this.globalsScanWork;
    function set_globalsScanWork(v:haxe.Int64):haxe.Int64 {
        this.globalsScanWork = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?heapLive:haxe.Int64, ?heapScan:haxe.Int64, ?heapScanWork:haxe.Int64, ?stackScanWork:haxe.Int64, ?globalsScanWork:haxe.Int64) this = new stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta((heapLive : stdgo.GoInt64), (heapScan : stdgo.GoInt64), (heapScanWork : stdgo.GoInt64), (stackScanWork : stdgo.GoInt64), (globalsScanWork : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
