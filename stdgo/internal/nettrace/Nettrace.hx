package stdgo.internal.nettrace;
@:structInit @:using(stdgo.internal.nettrace.Nettrace.TraceKey_static_extension) abstract TraceKey(stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey) from stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey to stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey {
    public function new() this = new stdgo._internal.internal.nettrace.Nettrace_TraceKey.TraceKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.nettrace.Nettrace.LookupIPAltResolverKey_static_extension) abstract LookupIPAltResolverKey(stdgo._internal.internal.nettrace.Nettrace_LookupIPAltResolverKey.LookupIPAltResolverKey) from stdgo._internal.internal.nettrace.Nettrace_LookupIPAltResolverKey.LookupIPAltResolverKey to stdgo._internal.internal.nettrace.Nettrace_LookupIPAltResolverKey.LookupIPAltResolverKey {
    public function new() this = new stdgo._internal.internal.nettrace.Nettrace_LookupIPAltResolverKey.LookupIPAltResolverKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.nettrace.Nettrace.Trace_static_extension) abstract Trace(stdgo._internal.internal.nettrace.Nettrace_Trace.Trace) from stdgo._internal.internal.nettrace.Nettrace_Trace.Trace to stdgo._internal.internal.nettrace.Nettrace_Trace.Trace {
    public var dNSStart(get, set) : stdgo.GoString -> Void;
    function get_dNSStart():stdgo.GoString -> Void return _0 -> this.dNSStart(_0);
    function set_dNSStart(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this.dNSStart = v;
        return v;
    }
    public var dNSDone(get, set) : (stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void;
    function get_dNSDone():(stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void return (_0, _1, _2) -> this.dNSDone([for (i in _0) i], _1, _2);
    function set_dNSDone(v:(stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void):(stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void {
        this.dNSDone = v;
        return v;
    }
    public var connectStart(get, set) : (stdgo.GoString, stdgo.GoString) -> Void;
    function get_connectStart():(stdgo.GoString, stdgo.GoString) -> Void return (_0, _1) -> this.connectStart(_0, _1);
    function set_connectStart(v:(stdgo.GoString, stdgo.GoString) -> Void):(stdgo.GoString, stdgo.GoString) -> Void {
        this.connectStart = v;
        return v;
    }
    public var connectDone(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void;
    function get_connectDone():(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void return (_0, _1, _2) -> this.connectDone(_0, _1, _2);
    function set_connectDone(v:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void):(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void {
        this.connectDone = v;
        return v;
    }
    public function new(?dNSStart:stdgo.GoString -> Void, ?dNSDone:(stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void) this = new stdgo._internal.internal.nettrace.Nettrace_Trace.Trace(dNSStart, dNSDone, connectStart, connectDone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TraceKeyPointer = stdgo._internal.internal.nettrace.Nettrace_TraceKeyPointer.TraceKeyPointer;
class TraceKey_static_extension {

}
typedef LookupIPAltResolverKeyPointer = stdgo._internal.internal.nettrace.Nettrace_LookupIPAltResolverKeyPointer.LookupIPAltResolverKeyPointer;
class LookupIPAltResolverKey_static_extension {

}
typedef TracePointer = stdgo._internal.internal.nettrace.Nettrace_TracePointer.TracePointer;
class Trace_static_extension {

}
/**
    Package nettrace contains internal hooks for tracing activity in
    the net package. This package is purely internal for use by the
    net/http/httptrace package and has no stable API exposed to end
    users.
**/
class Nettrace {

}
