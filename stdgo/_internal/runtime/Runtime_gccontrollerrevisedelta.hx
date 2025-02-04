package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_gccontrollerrevisedelta_static_extension.GCControllerReviseDelta_static_extension) class GCControllerReviseDelta {
    public var heapLive : stdgo.GoInt64 = 0;
    public var heapScan : stdgo.GoInt64 = 0;
    public var heapScanWork : stdgo.GoInt64 = 0;
    public var stackScanWork : stdgo.GoInt64 = 0;
    public var globalsScanWork : stdgo.GoInt64 = 0;
    public function new(?heapLive:stdgo.GoInt64, ?heapScan:stdgo.GoInt64, ?heapScanWork:stdgo.GoInt64, ?stackScanWork:stdgo.GoInt64, ?globalsScanWork:stdgo.GoInt64) {
        if (heapLive != null) this.heapLive = heapLive;
        if (heapScan != null) this.heapScan = heapScan;
        if (heapScanWork != null) this.heapScanWork = heapScanWork;
        if (stackScanWork != null) this.stackScanWork = stackScanWork;
        if (globalsScanWork != null) this.globalsScanWork = globalsScanWork;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GCControllerReviseDelta(heapLive, heapScan, heapScanWork, stackScanWork, globalsScanWork);
    }
}
