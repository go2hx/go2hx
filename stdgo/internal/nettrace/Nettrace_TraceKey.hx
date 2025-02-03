package stdgo.internal.nettrace;
@:structInit @:using(stdgo.internal.nettrace.Nettrace.TraceKey_static_extension) abstract TraceKey(stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey) from stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey to stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey {
    public function new() this = new stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
