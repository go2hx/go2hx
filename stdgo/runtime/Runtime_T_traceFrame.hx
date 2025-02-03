package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceFrame_static_extension) abstract T_traceFrame(stdgo._internal.runtime.Runtime_T_traceFrame.T_traceFrame) from stdgo._internal.runtime.Runtime_T_traceFrame.T_traceFrame to stdgo._internal.runtime.Runtime_T_traceFrame.T_traceFrame {
    public var pC(get, set) : stdgo.GoUIntptr;
    function get_pC():stdgo.GoUIntptr return this.pC;
    function set_pC(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pC = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?pC:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_T_traceFrame.T_traceFrame((pC : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
