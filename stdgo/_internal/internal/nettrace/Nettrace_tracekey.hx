package stdgo._internal.internal.nettrace;
@:structInit @:using(stdgo._internal.internal.nettrace.Nettrace_tracekey_static_extension.TraceKey_static_extension) class TraceKey {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TraceKey();
    }
}
