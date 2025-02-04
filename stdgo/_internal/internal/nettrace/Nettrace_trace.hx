package stdgo._internal.internal.nettrace;
@:structInit @:using(stdgo._internal.internal.nettrace.Nettrace_trace_static_extension.Trace_static_extension) class Trace {
    public var dNSStart : stdgo.GoString -> Void = null;
    public var dNSDone : (stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void = null;
    public var connectStart : (stdgo.GoString, stdgo.GoString) -> Void = null;
    public var connectDone : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void = null;
    public function new(?dNSStart:stdgo.GoString -> Void, ?dNSDone:(stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void) {
        if (dNSStart != null) this.dNSStart = dNSStart;
        if (dNSDone != null) this.dNSDone = dNSDone;
        if (connectStart != null) this.connectStart = connectStart;
        if (connectDone != null) this.connectDone = connectDone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Trace(dNSStart, dNSDone, connectStart, connectDone);
    }
}
