package stdgo;
@:structInit @:using(stdgo.internal.nettrace.Nettrace.TraceKey_static_extension) abstract TraceKey(stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey) from stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey to stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey {
    public function new() this = new stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.nettrace.Nettrace.LookupIPAltResolverKey_static_extension) abstract LookupIPAltResolverKey(stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkey.LookupIPAltResolverKey) from stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkey.LookupIPAltResolverKey to stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkey.LookupIPAltResolverKey {
    public function new() this = new stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkey.LookupIPAltResolverKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.nettrace.Nettrace.Trace_static_extension) abstract Trace(stdgo._internal.internal.nettrace.Nettrace_trace.Trace) from stdgo._internal.internal.nettrace.Nettrace_trace.Trace to stdgo._internal.internal.nettrace.Nettrace_trace.Trace {
    public var dNSStart(get, set) : String -> Void;
    function get_dNSStart():String -> Void return _0 -> this.dNSStart(_0);
    function set_dNSStart(v:String -> Void):String -> Void {
        this.dNSStart = v;
        return v;
    }
    public var dNSDone(get, set) : (Array<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void;
    function get_dNSDone():(Array<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void return (_0, _1, _2) -> this.dNSDone([for (i in _0) i], _1, _2);
    function set_dNSDone(v:(Array<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void):(Array<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void {
        this.dNSDone = v;
        return v;
    }
    public var connectStart(get, set) : (String, String) -> Void;
    function get_connectStart():(String, String) -> Void return (_0, _1) -> this.connectStart(_0, _1);
    function set_connectStart(v:(String, String) -> Void):(String, String) -> Void {
        this.connectStart = v;
        return v;
    }
    public var connectDone(get, set) : (String, String, stdgo.Error) -> Void;
    function get_connectDone():(String, String, stdgo.Error) -> Void return (_0, _1, _2) -> this.connectDone(_0, _1, _2);
    function set_connectDone(v:(String, String, stdgo.Error) -> Void):(String, String, stdgo.Error) -> Void {
        this.connectDone = v;
        return v;
    }
    public function new(?dNSStart:String -> Void, ?dNSDone:(Array<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void, ?connectStart:(String, String) -> Void, ?connectDone:(String, String, stdgo.Error) -> Void) this = new stdgo._internal.internal.nettrace.Nettrace_trace.Trace(dNSStart, dNSDone, connectStart, connectDone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TraceKeyPointer = stdgo._internal.internal.nettrace.Nettrace_tracekeypointer.TraceKeyPointer;
class TraceKey_static_extension {

}
typedef LookupIPAltResolverKeyPointer = stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkeypointer.LookupIPAltResolverKeyPointer;
class LookupIPAltResolverKey_static_extension {

}
typedef TracePointer = stdgo._internal.internal.nettrace.Nettrace_tracepointer.TracePointer;
class Trace_static_extension {

}
/**
    * Package nettrace contains internal hooks for tracing activity in
    * the net package. This package is purely internal for use by the
    * net/http/httptrace package and has no stable API exposed to end
    * users.
**/
class Nettrace {

}
