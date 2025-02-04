package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_traceframe_static_extension.T_traceFrame_static_extension) class T_traceFrame {
    public var pC : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?pC:stdgo.GoUIntptr) {
        if (pC != null) this.pC = pC;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_traceFrame(pC);
    }
}
