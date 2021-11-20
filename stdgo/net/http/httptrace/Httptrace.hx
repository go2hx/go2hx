package stdgo.net.http.httptrace;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_clientEventContextKey {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientEventContextKey();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class ClientTrace {
    public function _hasNetHooks():Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t == null || _t.isNil()) {
            return false;
        };
        return _t.value.dnsstart != null || _t.value.dnsdone != null || _t.value.connectStart != null || _t.value.connectDone != null;
    }
    public function _compose(_old:Pointer<ClientTrace>):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_old == null || _old.isNil()) {
            return;
        };
        var _tv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_t)).elem().__copy__();
        var _ov:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_old)).elem().__copy__();
        var _structType:stdgo.reflect.Reflect.Type = _tv.type();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _structType.numField(), _i++, {
                var _tf:stdgo.reflect.Reflect.Value = _tv.field(_i).__copy__();
                var _hookType:stdgo.reflect.Reflect.Type = _tf.type();
                if (_hookType.kind().__t__ != stdgo.reflect.Reflect.func.__t__) {
                    continue;
                };
                var _of:stdgo.reflect.Reflect.Value = _ov.field(_i).__copy__();
                if (_of.isNil()) {
                    continue;
                };
                if (_tf.isNil()) {
                    _tf.set(_of.__copy__());
                    continue;
                };
                var _tfCopy:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_tf.interface_())).__copy__();
                var _newFunc:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.makeFunc(_hookType, function(_args:Slice<stdgo.reflect.Reflect.Value>):Slice<stdgo.reflect.Reflect.Value> {
                    _tfCopy.call(_args);
                    return _of.call(_args);
                }).__copy__();
                _tv.field(_i).set(_newFunc.__copy__());
            });
        };
    }
    public var getConn : GoString -> Void = null;
    public var gotConn : GotConnInfo -> Void = null;
    public var putIdleConn : stdgo.Error -> Void = null;
    public var gotFirstResponseByte : () -> Void = null;
    public var got100Continue : () -> Void = null;
    public var got1xxResponse : (GoInt, stdgo.net.textproto.Textproto.MIMEHeader) -> stdgo.Error = null;
    public var dnsstart : DNSStartInfo -> Void = null;
    public var dnsdone : DNSDoneInfo -> Void = null;
    public var connectStart : (GoString, GoString) -> Void = null;
    public var connectDone : (GoString, GoString, stdgo.Error) -> Void = null;
    public var tlshandshakeStart : () -> Void = null;
    public var tlshandshakeDone : (stdgo.crypto.tls.Tls.ConnectionState, stdgo.Error) -> Void = null;
    public var wroteHeaderField : (GoString, Slice<GoString>) -> Void = null;
    public var wroteHeaders : () -> Void = null;
    public var wait100Continue : () -> Void = null;
    public var wroteRequest : WroteRequestInfo -> Void = null;
    public function new(?getConn:GoString -> Void, ?gotConn:GotConnInfo -> Void, ?putIdleConn:stdgo.Error -> Void, ?gotFirstResponseByte:() -> Void, ?got100Continue:() -> Void, ?got1xxResponse:(GoInt, stdgo.net.textproto.Textproto.MIMEHeader) -> stdgo.Error, ?dnsstart:DNSStartInfo -> Void, ?dnsdone:DNSDoneInfo -> Void, ?connectStart:(GoString, GoString) -> Void, ?connectDone:(GoString, GoString, stdgo.Error) -> Void, ?tlshandshakeStart:() -> Void, ?tlshandshakeDone:(stdgo.crypto.tls.Tls.ConnectionState, stdgo.Error) -> Void, ?wroteHeaderField:(GoString, Slice<GoString>) -> Void, ?wroteHeaders:() -> Void, ?wait100Continue:() -> Void, ?wroteRequest:WroteRequestInfo -> Void) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(getConn) + " " + Go.string(gotConn) + " " + Go.string(putIdleConn) + " " + Go.string(gotFirstResponseByte) + " " + Go.string(got100Continue) + " " + Go.string(got1xxResponse) + " " + Go.string(dnsstart) + " " + Go.string(dnsdone) + " " + Go.string(connectStart) + " " + Go.string(connectDone) + " " + Go.string(tlshandshakeStart) + " " + Go.string(tlshandshakeDone) + " " + Go.string(wroteHeaderField) + " " + Go.string(wroteHeaders) + " " + Go.string(wait100Continue) + " " + Go.string(wroteRequest) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ClientTrace(
getConn,
gotConn,
putIdleConn,
gotFirstResponseByte,
got100Continue,
got1xxResponse,
dnsstart,
dnsdone,
connectStart,
connectDone,
tlshandshakeStart,
tlshandshakeDone,
wroteHeaderField,
wroteHeaders,
wait100Continue,
wroteRequest);
    }
    public function __set__(__tmp__) {
        this.getConn = __tmp__.getConn;
        this.gotConn = __tmp__.gotConn;
        this.putIdleConn = __tmp__.putIdleConn;
        this.gotFirstResponseByte = __tmp__.gotFirstResponseByte;
        this.got100Continue = __tmp__.got100Continue;
        this.got1xxResponse = __tmp__.got1xxResponse;
        this.dnsstart = __tmp__.dnsstart;
        this.dnsdone = __tmp__.dnsdone;
        this.connectStart = __tmp__.connectStart;
        this.connectDone = __tmp__.connectDone;
        this.tlshandshakeStart = __tmp__.tlshandshakeStart;
        this.tlshandshakeDone = __tmp__.tlshandshakeDone;
        this.wroteHeaderField = __tmp__.wroteHeaderField;
        this.wroteHeaders = __tmp__.wroteHeaders;
        this.wait100Continue = __tmp__.wait100Continue;
        this.wroteRequest = __tmp__.wroteRequest;
        return this;
    }
}
@:structInit class WroteRequestInfo {
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new WroteRequestInfo(err);
    }
    public function __set__(__tmp__) {
        this.err = __tmp__.err;
        return this;
    }
}
@:structInit class DNSStartInfo {
    public var host : GoString = (("" : GoString));
    public function new(?host:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(host) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DNSStartInfo(host);
    }
    public function __set__(__tmp__) {
        this.host = __tmp__.host;
        return this;
    }
}
@:structInit class DNSDoneInfo {
    public var addrs : Slice<stdgo.net.Net.IPAddr> = new Slice<stdgo.net.Net.IPAddr>().nil();
    public var err : stdgo.Error = ((null : stdgo.Error));
    public var coalesced : Bool = false;
    public function new(?addrs:Slice<stdgo.net.Net.IPAddr>, ?err:stdgo.Error, ?coalesced:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(addrs) + " " + Go.string(err) + " " + Go.string(coalesced) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DNSDoneInfo(addrs, err, coalesced);
    }
    public function __set__(__tmp__) {
        this.addrs = __tmp__.addrs;
        this.err = __tmp__.err;
        this.coalesced = __tmp__.coalesced;
        return this;
    }
}
@:structInit class GotConnInfo {
    public var conn : stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
    public var reused : Bool = false;
    public var wasIdle : Bool = false;
    public var idleTime : stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
    public function new(?conn:stdgo.net.Net.Conn, ?reused:Bool, ?wasIdle:Bool, ?idleTime:stdgo.time.Time.Duration) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(conn) + " " + Go.string(reused) + " " + Go.string(wasIdle) + " " + Go.string(idleTime) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GotConnInfo(conn, reused, wasIdle, idleTime);
    }
    public function __set__(__tmp__) {
        this.conn = __tmp__.conn;
        this.reused = __tmp__.reused;
        this.wasIdle = __tmp__.wasIdle;
        this.idleTime = __tmp__.idleTime;
        return this;
    }
}
/**
    // ContextClientTrace returns the ClientTrace associated with the
    // provided context. If none, it returns nil.
**/
function contextClientTrace(_ctx:stdgo.context.Context.Context):Pointer<ClientTrace> {
        var __tmp__ = try {
            { value : ((_ctx.value(Go.toInterface(new T_clientEventContextKey().__copy__())).value : Pointer<ClientTrace>)), ok : true };
        } catch(_) {
            { value : new Pointer<ClientTrace>().nil(), ok : false };
        }, _trace = __tmp__.value, _ = __tmp__.ok;
        return _trace;
    }
/**
    // WithClientTrace returns a new context based on the provided parent
    // ctx. HTTP client requests made with the returned context will use
    // the provided trace hooks, in addition to any previous hooks
    // registered with ctx. Any hooks defined in the provided trace will
    // be called first.
**/
function withClientTrace(_ctx:stdgo.context.Context.Context, _trace:Pointer<ClientTrace>):stdgo.context.Context.Context {
        if (_trace == null || _trace.isNil()) {
            throw "nil trace";
        };
        var _old:Pointer<ClientTrace> = contextClientTrace(_ctx);
        _trace.value._compose(_old);
        _ctx = stdgo.context.Context.withValue(_ctx, Go.toInterface(new T_clientEventContextKey().__copy__()), Go.toInterface(_trace));
        if (_trace.value._hasNetHooks()) {
            var _nt:Pointer<internal.nettrace.Nettrace.Trace> = Go.pointer((({ connectStart : _trace.value.connectStart, connectDone : _trace.value.connectDone, dnsstart : null, dnsdone : null } : internal.nettrace.Nettrace.Trace)));
            if (_trace.value.dnsstart != null) {
                _nt.value.dnsstart = function(_name:GoString):Void {
                    _trace.value.dnsstart((({ host : _name } : DNSStartInfo)).__copy__());
                };
            };
            if (_trace.value.dnsdone != null) {
                _nt.value.dnsdone = function(_netIPs:Slice<AnyInterface>, _coalesced:Bool, _err:Error):Void {
                    var _addrs:Slice<stdgo.net.Net.IPAddr> = new Slice<stdgo.net.Net.IPAddr>(...[for (i in 0 ... ((_netIPs.length : GoInt)).toBasic()) new stdgo.net.Net.IPAddr()]);
                    {
                        var _i;
                        var _ip;
                        for (_obj in _netIPs.keyValueIterator()) {
                            _i = _obj.key;
                            _ip = _obj.value;
                            _addrs[_i] = ((_ip.value : stdgo.net.Net.IPAddr)).__copy__();
                        };
                    };
                    _trace.value.dnsdone((({ addrs : _addrs, coalesced : _coalesced, err : _err } : DNSDoneInfo)).__copy__());
                };
            };
            _ctx = stdgo.context.Context.withValue(_ctx, Go.toInterface(new internal.nettrace.Nettrace.TraceKey().__copy__()), Go.toInterface(_nt));
        };
        return _ctx;
    }
class ClientTrace_extension_fields {
    public function _compose(__tmp__, _old:Pointer<ClientTrace>):Void __tmp__._compose(_old);
    public function _hasNetHooks(__tmp__):Bool return __tmp__._hasNetHooks();
}
