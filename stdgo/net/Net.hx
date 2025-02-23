package stdgo.net;
final flagUp : Flags = stdgo._internal.net.Net_flagup.flagUp;
final flagBroadcast = stdgo._internal.net.Net_flagbroadcast.flagBroadcast;
final flagLoopback = stdgo._internal.net.Net_flagloopback.flagLoopback;
final flagPointToPoint = stdgo._internal.net.Net_flagpointtopoint.flagPointToPoint;
final flagMulticast = stdgo._internal.net.Net_flagmulticast.flagMulticast;
final flagRunning = stdgo._internal.net.Net_flagrunning.flagRunning;
final iPv4len : haxe.UInt64 = stdgo._internal.net.Net_ipv4len.iPv4len;
final iPv6len : haxe.UInt64 = stdgo._internal.net.Net_ipv6len.iPv6len;
var iPv4bcast(get, set) : IP;
private function get_iPv4bcast():IP return stdgo._internal.net.Net_ipv4bcast.iPv4bcast;
private function set_iPv4bcast(v:IP):IP {
        stdgo._internal.net.Net_ipv4bcast.iPv4bcast = v;
        return v;
    }
var iPv4allsys(get, set) : IP;
private function get_iPv4allsys():IP return stdgo._internal.net.Net_ipv4allsys.iPv4allsys;
private function set_iPv4allsys(v:IP):IP {
        stdgo._internal.net.Net_ipv4allsys.iPv4allsys = v;
        return v;
    }
var iPv4allrouter(get, set) : IP;
private function get_iPv4allrouter():IP return stdgo._internal.net.Net_ipv4allrouter.iPv4allrouter;
private function set_iPv4allrouter(v:IP):IP {
        stdgo._internal.net.Net_ipv4allrouter.iPv4allrouter = v;
        return v;
    }
var iPv4zero(get, set) : IP;
private function get_iPv4zero():IP return stdgo._internal.net.Net_ipv4zero.iPv4zero;
private function set_iPv4zero(v:IP):IP {
        stdgo._internal.net.Net_ipv4zero.iPv4zero = v;
        return v;
    }
var iPv6zero(get, set) : IP;
private function get_iPv6zero():IP return stdgo._internal.net.Net_ipv6zero.iPv6zero;
private function set_iPv6zero(v:IP):IP {
        stdgo._internal.net.Net_ipv6zero.iPv6zero = v;
        return v;
    }
var iPv6unspecified(get, set) : IP;
private function get_iPv6unspecified():IP return stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified;
private function set_iPv6unspecified(v:IP):IP {
        stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified = v;
        return v;
    }
var iPv6loopback(get, set) : IP;
private function get_iPv6loopback():IP return stdgo._internal.net.Net_ipv6loopback.iPv6loopback;
private function set_iPv6loopback(v:IP):IP {
        stdgo._internal.net.Net_ipv6loopback.iPv6loopback = v;
        return v;
    }
var iPv6interfacelocalallnodes(get, set) : IP;
private function get_iPv6interfacelocalallnodes():IP return stdgo._internal.net.Net_ipv6interfacelocalallnodes.iPv6interfacelocalallnodes;
private function set_iPv6interfacelocalallnodes(v:IP):IP {
        stdgo._internal.net.Net_ipv6interfacelocalallnodes.iPv6interfacelocalallnodes = v;
        return v;
    }
var iPv6linklocalallnodes(get, set) : IP;
private function get_iPv6linklocalallnodes():IP return stdgo._internal.net.Net_ipv6linklocalallnodes.iPv6linklocalallnodes;
private function set_iPv6linklocalallnodes(v:IP):IP {
        stdgo._internal.net.Net_ipv6linklocalallnodes.iPv6linklocalallnodes = v;
        return v;
    }
var iPv6linklocalallrouters(get, set) : IP;
private function get_iPv6linklocalallrouters():IP return stdgo._internal.net.Net_ipv6linklocalallrouters.iPv6linklocalallrouters;
private function set_iPv6linklocalallrouters(v:IP):IP {
        stdgo._internal.net.Net_ipv6linklocalallrouters.iPv6linklocalallrouters = v;
        return v;
    }
var defaultResolver(get, set) : Resolver;
private function get_defaultResolver():Resolver return stdgo._internal.net.Net_defaultresolver.defaultResolver;
private function set_defaultResolver(v:Resolver):Resolver {
        stdgo._internal.net.Net_defaultresolver.defaultResolver = (v : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        return v;
    }
var errWriteToConnected(get, set) : stdgo.Error;
private function get_errWriteToConnected():stdgo.Error return stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected;
private function set_errWriteToConnected(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected = (v : stdgo.Error);
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.net.Net_errclosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errclosed.errClosed = (v : stdgo.Error);
        return v;
    }
class Addr_static_extension {
    static public function string(t:stdgo._internal.net.Net_addr.Addr):String {
        return stdgo._internal.net.Net_addr_static_extension.Addr_static_extension.string(t);
    }
    static public function network(t:stdgo._internal.net.Net_addr.Addr):String {
        return stdgo._internal.net.Net_addr_static_extension.Addr_static_extension.network(t);
    }
}
@:forward abstract Addr(stdgo._internal.net.Net_addr.Addr) from stdgo._internal.net.Net_addr.Addr to stdgo._internal.net.Net_addr.Addr {
    @:from
    static function fromHaxeInterface(x:{ function network():String; function string():String; }):Addr {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Addr = { network : () -> x.network(), string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Conn_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.Net_conn.Conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.setWriteDeadline(t, _t);
    }
    static public function setReadDeadline(t:stdgo._internal.net.Net_conn.Conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.setReadDeadline(t, _t);
    }
    static public function setDeadline(t:stdgo._internal.net.Net_conn.Conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.setDeadline(t, _t);
    }
    static public function remoteAddr(t:stdgo._internal.net.Net_conn.Conn):Addr {
        return stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.remoteAddr(t);
    }
    static public function localAddr(t:stdgo._internal.net.Net_conn.Conn):Addr {
        return stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.localAddr(t);
    }
    static public function close(t:stdgo._internal.net.Net_conn.Conn):stdgo.Error {
        return stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.close(t);
    }
    static public function write(t:stdgo._internal.net.Net_conn.Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.write(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(t:stdgo._internal.net.Net_conn.Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_conn_static_extension.Conn_static_extension.read(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract Conn(stdgo._internal.net.Net_conn.Conn) from stdgo._internal.net.Net_conn.Conn to stdgo._internal.net.Net_conn.Conn {
    @:from
    static function fromHaxeInterface(x:{ function read(_b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function write(_b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function close():stdgo.Error; function localAddr():Addr; function remoteAddr():Addr; function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error; function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error; function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error; }):Conn {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Conn = { read : _0 -> x.read([for (i in _0) i]), write : _0 -> x.write([for (i in _0) i]), close : () -> x.close(), localAddr : () -> x.localAddr(), remoteAddr : () -> x.remoteAddr(), setDeadline : _0 -> x.setDeadline(_0), setReadDeadline : _0 -> x.setReadDeadline(_0), setWriteDeadline : _0 -> x.setWriteDeadline(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class PacketConn_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.Net_packetconn.PacketConn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.setWriteDeadline(t, _t);
    }
    static public function setReadDeadline(t:stdgo._internal.net.Net_packetconn.PacketConn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.setReadDeadline(t, _t);
    }
    static public function setDeadline(t:stdgo._internal.net.Net_packetconn.PacketConn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.setDeadline(t, _t);
    }
    static public function localAddr(t:stdgo._internal.net.Net_packetconn.PacketConn):Addr {
        return stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.localAddr(t);
    }
    static public function close(t:stdgo._internal.net.Net_packetconn.PacketConn):stdgo.Error {
        return stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.close(t);
    }
    static public function writeTo(t:stdgo._internal.net.Net_packetconn.PacketConn, _p:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.writeTo(t, _p, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(t:stdgo._internal.net.Net_packetconn.PacketConn, _p:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_packetconn_static_extension.PacketConn_static_extension.readFrom(t, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:forward abstract PacketConn(stdgo._internal.net.Net_packetconn.PacketConn) from stdgo._internal.net.Net_packetconn.PacketConn to stdgo._internal.net.Net_packetconn.PacketConn {
    @:from
    static function fromHaxeInterface(x:{ function readFrom(_p:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error>; function writeTo(_p:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function close():stdgo.Error; function localAddr():Addr; function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error; function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error; function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error; }):PacketConn {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:PacketConn = { readFrom : _0 -> x.readFrom([for (i in _0) i]), writeTo : (_0, _1) -> x.writeTo([for (i in _0) i], _1), close : () -> x.close(), localAddr : () -> x.localAddr(), setDeadline : _0 -> x.setDeadline(_0), setReadDeadline : _0 -> x.setReadDeadline(_0), setWriteDeadline : _0 -> x.setWriteDeadline(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Listener_static_extension {
    static public function addr(t:stdgo._internal.net.Net_listener.Listener):Addr {
        return stdgo._internal.net.Net_listener_static_extension.Listener_static_extension.addr(t);
    }
    static public function close(t:stdgo._internal.net.Net_listener.Listener):stdgo.Error {
        return stdgo._internal.net.Net_listener_static_extension.Listener_static_extension.close(t);
    }
    static public function accept(t:stdgo._internal.net.Net_listener.Listener):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listener_static_extension.Listener_static_extension.accept(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract Listener(stdgo._internal.net.Net_listener.Listener) from stdgo._internal.net.Net_listener.Listener to stdgo._internal.net.Net_listener.Listener {
    @:from
    static function fromHaxeInterface(x:{ function accept():stdgo.Tuple<Conn, stdgo.Error>; function close():stdgo.Error; function addr():Addr; }):Listener {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Listener = { accept : () -> x.accept(), close : () -> x.close(), addr : () -> x.addr(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Error_static_extension {
    static public function temporary(t:stdgo._internal.net.Net_error.Error):Bool {
        return stdgo._internal.net.Net_error_static_extension.Error_static_extension.temporary(t);
    }
    static public function timeout(t:stdgo._internal.net.Net_error.Error):Bool {
        return stdgo._internal.net.Net_error_static_extension.Error_static_extension.timeout(t);
    }
}
@:forward abstract Error(stdgo._internal.net.Net_error.Error) from stdgo._internal.net.Net_error.Error to stdgo._internal.net.Net_error.Error {
    @:from
    static function fromHaxeInterface(x:{ function timeout():Bool; function temporary():Bool; }):Error {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Error = { timeout : () -> x.timeout(), temporary : () -> x.temporary(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_timeout_static_extension {
    static public function timeout(t:stdgo._internal.net.Net_t_timeout.T_timeout):Bool {
        return stdgo._internal.net.Net_t_timeout_static_extension.T_timeout_static_extension.timeout(t);
    }
}
@:dox(hide) @:forward abstract T_timeout(stdgo._internal.net.Net_t_timeout.T_timeout) from stdgo._internal.net.Net_t_timeout.T_timeout to stdgo._internal.net.Net_t_timeout.T_timeout {
    @:from
    static function fromHaxeInterface(x:{ function timeout():Bool; }):T_timeout {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_timeout = { timeout : () -> x.timeout(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_temporary_static_extension {
    static public function temporary(t:stdgo._internal.net.Net_t_temporary.T_temporary):Bool {
        return stdgo._internal.net.Net_t_temporary_static_extension.T_temporary_static_extension.temporary(t);
    }
}
@:dox(hide) @:forward abstract T_temporary(stdgo._internal.net.Net_t_temporary.T_temporary) from stdgo._internal.net.Net_t_temporary.T_temporary to stdgo._internal.net.Net_t_temporary.T_temporary {
    @:from
    static function fromHaxeInterface(x:{ function temporary():Bool; }):T_temporary {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_temporary = { temporary : () -> x.temporary(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_buffersWriter_static_extension {

}
@:dox(hide) @:forward abstract T_buffersWriter(stdgo._internal.net.Net_t_bufferswriter.T_buffersWriter) from stdgo._internal.net.Net_t_bufferswriter.T_buffersWriter to stdgo._internal.net.Net_t_bufferswriter.T_buffersWriter {
    @:from
    static function fromHaxeInterface(x:{ }):T_buffersWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_buffersWriter = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_sockaddr_static_extension {

}
@:dox(hide) @:forward abstract T_sockaddr(stdgo._internal.net.Net_t_sockaddr.T_sockaddr) from stdgo._internal.net.Net_t_sockaddr.T_sockaddr to stdgo._internal.net.Net_t_sockaddr.T_sockaddr {
    @:from
    static function fromHaxeInterface(x:{ }):T_sockaddr {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_sockaddr = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.Net.T_ipAttr_static_extension) @:dox(hide) abstract T_ipAttr(stdgo._internal.net.Net_t_ipattr.T_ipAttr) from stdgo._internal.net.Net_t_ipattr.T_ipAttr to stdgo._internal.net.Net_t_ipattr.T_ipAttr {
    public var scope(get, set) : T_scope;
    function get_scope():T_scope return this.scope;
    function set_scope(v:T_scope):T_scope {
        this.scope = v;
        return v;
    }
    public var precedence(get, set) : std.UInt;
    function get_precedence():std.UInt return this.precedence;
    function set_precedence(v:std.UInt):std.UInt {
        this.precedence = (v : stdgo.GoUInt8);
        return v;
    }
    public var label(get, set) : std.UInt;
    function get_label():std.UInt return this.label;
    function set_label(v:std.UInt):std.UInt {
        this.label = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?scope:T_scope, ?precedence:std.UInt, ?label:std.UInt) this = new stdgo._internal.net.Net_t_ipattr.T_ipAttr(scope, (precedence : stdgo.GoUInt8), (label : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_byRFC6724_static_extension) @:dox(hide) abstract T_byRFC6724(stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724) from stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724 to stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724 {
    public function new() this = new stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_policyTableEntry_static_extension) @:dox(hide) abstract T_policyTableEntry(stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry) from stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry to stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry {
    public var prefix(get, set) : stdgo._internal.net.netip.Netip_prefix.Prefix;
    function get_prefix():stdgo._internal.net.netip.Netip_prefix.Prefix return this.prefix;
    function set_prefix(v:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo._internal.net.netip.Netip_prefix.Prefix {
        this.prefix = v;
        return v;
    }
    public var precedence(get, set) : std.UInt;
    function get_precedence():std.UInt return this.precedence;
    function set_precedence(v:std.UInt):std.UInt {
        this.precedence = (v : stdgo.GoUInt8);
        return v;
    }
    public var label(get, set) : std.UInt;
    function get_label():std.UInt return this.label;
    function set_label(v:std.UInt):std.UInt {
        this.label = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?prefix:stdgo._internal.net.netip.Netip_prefix.Prefix, ?precedence:std.UInt, ?label:std.UInt) this = new stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry(prefix, (precedence : stdgo.GoUInt8), (label : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.Dialer_static_extension) abstract Dialer(stdgo._internal.net.Net_dialer.Dialer) from stdgo._internal.net.Net_dialer.Dialer to stdgo._internal.net.Net_dialer.Dialer {
    public var timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_timeout():stdgo._internal.time.Time_duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.timeout = v;
        return v;
    }
    public var deadline(get, set) : stdgo._internal.time.Time_time.Time;
    function get_deadline():stdgo._internal.time.Time_time.Time return this.deadline;
    function set_deadline(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.deadline = v;
        return v;
    }
    public var localAddr(get, set) : Addr;
    function get_localAddr():Addr return this.localAddr;
    function set_localAddr(v:Addr):Addr {
        this.localAddr = v;
        return v;
    }
    public var dualStack(get, set) : Bool;
    function get_dualStack():Bool return this.dualStack;
    function set_dualStack(v:Bool):Bool {
        this.dualStack = v;
        return v;
    }
    public var fallbackDelay(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_fallbackDelay():stdgo._internal.time.Time_duration.Duration return this.fallbackDelay;
    function set_fallbackDelay(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.fallbackDelay = v;
        return v;
    }
    public var keepAlive(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_keepAlive():stdgo._internal.time.Time_duration.Duration return this.keepAlive;
    function set_keepAlive(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.keepAlive = v;
        return v;
    }
    public var resolver(get, set) : Resolver;
    function get_resolver():Resolver return this.resolver;
    function set_resolver(v:Resolver):Resolver {
        this.resolver = (v : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        return v;
    }
    public var cancel(get, set) : stdgo.Chan<{ }>;
    function get_cancel():stdgo.Chan<{ }> return this.cancel;
    function set_cancel(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this.cancel = (v : stdgo.Chan<{ }>);
        return v;
    }
    public var control(get, set) : (String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error;
    function get_control():(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error return (_0, _1, _2) -> this.control(_0, _1, _2);
    function set_control(v:(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error):(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error {
        this.control = v;
        return v;
    }
    public var controlContext(get, set) : (stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error;
    function get_controlContext():(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error return (_0, _1, _2, _3) -> this.controlContext(_0, _1, _2, _3);
    function set_controlContext(v:(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error):(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error {
        this.controlContext = v;
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?deadline:stdgo._internal.time.Time_time.Time, ?localAddr:Addr, ?dualStack:Bool, ?fallbackDelay:stdgo._internal.time.Time_duration.Duration, ?keepAlive:stdgo._internal.time.Time_duration.Duration, ?resolver:Resolver, ?cancel:stdgo.Chan<{ }>, ?control:(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?controlContext:(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error) this = new stdgo._internal.net.Net_dialer.Dialer(timeout, deadline, localAddr, dualStack, fallbackDelay, keepAlive, (resolver : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>), (cancel : stdgo.Chan<{ }>), control, controlContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_sysDialer_static_extension) @:dox(hide) abstract T_sysDialer(stdgo._internal.net.Net_t_sysdialer.T_sysDialer) from stdgo._internal.net.Net_t_sysdialer.T_sysDialer to stdgo._internal.net.Net_t_sysdialer.T_sysDialer {
    public var dialer(get, set) : Dialer;
    function get_dialer():Dialer return this.dialer;
    function set_dialer(v:Dialer):Dialer {
        this.dialer = v;
        return v;
    }
    public function new(?dialer:Dialer) this = new stdgo._internal.net.Net_t_sysdialer.T_sysDialer(dialer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.ListenConfig_static_extension) abstract ListenConfig(stdgo._internal.net.Net_listenconfig.ListenConfig) from stdgo._internal.net.Net_listenconfig.ListenConfig to stdgo._internal.net.Net_listenconfig.ListenConfig {
    public var control(get, set) : (String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error;
    function get_control():(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error return (_0, _1, _2) -> this.control(_0, _1, _2);
    function set_control(v:(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error):(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error {
        this.control = v;
        return v;
    }
    public var keepAlive(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_keepAlive():stdgo._internal.time.Time_duration.Duration return this.keepAlive;
    function set_keepAlive(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.keepAlive = v;
        return v;
    }
    public function new(?control:(String, String, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?keepAlive:stdgo._internal.time.Time_duration.Duration) this = new stdgo._internal.net.Net_listenconfig.ListenConfig(control, keepAlive);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_sysListener_static_extension) @:dox(hide) abstract T_sysListener(stdgo._internal.net.Net_t_syslistener.T_sysListener) from stdgo._internal.net.Net_t_syslistener.T_sysListener to stdgo._internal.net.Net_t_syslistener.T_sysListener {
    public var listenConfig(get, set) : ListenConfig;
    function get_listenConfig():ListenConfig return this.listenConfig;
    function set_listenConfig(v:ListenConfig):ListenConfig {
        this.listenConfig = v;
        return v;
    }
    public function new(?listenConfig:ListenConfig) this = new stdgo._internal.net.Net_t_syslistener.T_sysListener(listenConfig);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.SRV_static_extension) abstract SRV(stdgo._internal.net.Net_srv.SRV) from stdgo._internal.net.Net_srv.SRV to stdgo._internal.net.Net_srv.SRV {
    public var target(get, set) : String;
    function get_target():String return this.target;
    function set_target(v:String):String {
        this.target = (v : stdgo.GoString);
        return v;
    }
    public var port(get, set) : std.UInt;
    function get_port():std.UInt return this.port;
    function set_port(v:std.UInt):std.UInt {
        this.port = (v : stdgo.GoUInt16);
        return v;
    }
    public var priority(get, set) : std.UInt;
    function get_priority():std.UInt return this.priority;
    function set_priority(v:std.UInt):std.UInt {
        this.priority = (v : stdgo.GoUInt16);
        return v;
    }
    public var weight(get, set) : std.UInt;
    function get_weight():std.UInt return this.weight;
    function set_weight(v:std.UInt):std.UInt {
        this.weight = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?target:String, ?port:std.UInt, ?priority:std.UInt, ?weight:std.UInt) this = new stdgo._internal.net.Net_srv.SRV((target : stdgo.GoString), (port : stdgo.GoUInt16), (priority : stdgo.GoUInt16), (weight : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.MX_static_extension) abstract MX(stdgo._internal.net.Net_mx.MX) from stdgo._internal.net.Net_mx.MX to stdgo._internal.net.Net_mx.MX {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public var pref(get, set) : std.UInt;
    function get_pref():std.UInt return this.pref;
    function set_pref(v:std.UInt):std.UInt {
        this.pref = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?host:String, ?pref:std.UInt) this = new stdgo._internal.net.Net_mx.MX((host : stdgo.GoString), (pref : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.NS_static_extension) abstract NS(stdgo._internal.net.Net_ns.NS) from stdgo._internal.net.Net_ns.NS to stdgo._internal.net.Net_ns.NS {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public function new(?host:String) this = new stdgo._internal.net.Net_ns.NS((host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_dnsConfig_static_extension) @:dox(hide) abstract T_dnsConfig(stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig) from stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig to stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig {
    public function new() this = new stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_byName_static_extension) @:dox(hide) abstract T_byName(stdgo._internal.net.Net_t_byname.T_byName) from stdgo._internal.net.Net_t_byname.T_byName to stdgo._internal.net.Net_t_byname.T_byName {
    public function new() this = new stdgo._internal.net.Net_t_byname.T_byName();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.Interface_static_extension) abstract Interface(stdgo._internal.net.Net_interface.Interface) from stdgo._internal.net.Net_interface.Interface to stdgo._internal.net.Net_interface.Interface {
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public var mTU(get, set) : StdTypes.Int;
    function get_mTU():StdTypes.Int return this.mTU;
    function set_mTU(v:StdTypes.Int):StdTypes.Int {
        this.mTU = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var hardwareAddr(get, set) : HardwareAddr;
    function get_hardwareAddr():HardwareAddr return this.hardwareAddr;
    function set_hardwareAddr(v:HardwareAddr):HardwareAddr {
        this.hardwareAddr = v;
        return v;
    }
    public var flags(get, set) : Flags;
    function get_flags():Flags return this.flags;
    function set_flags(v:Flags):Flags {
        this.flags = v;
        return v;
    }
    public function new(?index:StdTypes.Int, ?mTU:StdTypes.Int, ?name:String, ?hardwareAddr:HardwareAddr, ?flags:Flags) this = new stdgo._internal.net.Net_interface.Interface((index : stdgo.GoInt), (mTU : stdgo.GoInt), (name : stdgo.GoString), hardwareAddr, flags);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_ipv6ZoneCache_static_extension) @:dox(hide) abstract T_ipv6ZoneCache(stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache) from stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache to stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache {
    public var rWMutex(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get_rWMutex():stdgo._internal.sync.Sync_rwmutex.RWMutex return this.rWMutex;
    function set_rWMutex(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this.rWMutex = v;
        return v;
    }
    public function new(?rWMutex:stdgo._internal.sync.Sync_rwmutex.RWMutex) this = new stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache(rWMutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.IPNet_static_extension) abstract IPNet(stdgo._internal.net.Net_ipnet.IPNet) from stdgo._internal.net.Net_ipnet.IPNet to stdgo._internal.net.Net_ipnet.IPNet {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var mask(get, set) : IPMask;
    function get_mask():IPMask return this.mask;
    function set_mask(v:IPMask):IPMask {
        this.mask = v;
        return v;
    }
    public function new(?iP:IP, ?mask:IPMask) this = new stdgo._internal.net.Net_ipnet.IPNet(iP, mask);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.IPAddr_static_extension) abstract IPAddr(stdgo._internal.net.Net_ipaddr.IPAddr) from stdgo._internal.net.Net_ipaddr.IPAddr to stdgo._internal.net.Net_ipaddr.IPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = (v : stdgo.GoString);
        return v;
    }
    public function new(?iP:IP, ?zone:String) this = new stdgo._internal.net.Net_ipaddr.IPAddr(iP, (zone : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.IPConn_static_extension) abstract IPConn(stdgo._internal.net.Net_ipconn.IPConn) from stdgo._internal.net.Net_ipconn.IPConn to stdgo._internal.net.Net_ipconn.IPConn {
    public function new() this = new stdgo._internal.net.Net_ipconn.IPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_ipStackCapabilities_static_extension) @:dox(hide) abstract T_ipStackCapabilities(stdgo._internal.net.Net_t_ipstackcapabilities.T_ipStackCapabilities) from stdgo._internal.net.Net_t_ipstackcapabilities.T_ipStackCapabilities to stdgo._internal.net.Net_t_ipstackcapabilities.T_ipStackCapabilities {
    public var once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get_once():stdgo._internal.sync.Sync_once.Once return this.once;
    function set_once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this.once = v;
        return v;
    }
    public function new(?once:stdgo._internal.sync.Sync_once.Once) this = new stdgo._internal.net.Net_t_ipstackcapabilities.T_ipStackCapabilities(once);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.Resolver_static_extension) abstract Resolver(stdgo._internal.net.Net_resolver.Resolver) from stdgo._internal.net.Net_resolver.Resolver to stdgo._internal.net.Net_resolver.Resolver {
    public var preferGo(get, set) : Bool;
    function get_preferGo():Bool return this.preferGo;
    function set_preferGo(v:Bool):Bool {
        this.preferGo = v;
        return v;
    }
    public var strictErrors(get, set) : Bool;
    function get_strictErrors():Bool return this.strictErrors;
    function set_strictErrors(v:Bool):Bool {
        this.strictErrors = v;
        return v;
    }
    public var dial(get, set) : (stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<Conn, stdgo.Error>;
    function get_dial():(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<Conn, stdgo.Error> return (_0, _1, _2) -> this.dial(_0, _1, _2);
    function set_dial(v:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<Conn, stdgo.Error>):(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<Conn, stdgo.Error> {
        this.dial = v;
        return v;
    }
    public function new(?preferGo:Bool, ?strictErrors:Bool, ?dial:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<Conn, stdgo.Error>) this = new stdgo._internal.net.Net_resolver.Resolver(preferGo, strictErrors, dial);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_onlyValuesCtx_static_extension) @:dox(hide) abstract T_onlyValuesCtx(stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx) from stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx to stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx {
    public var context(get, set) : stdgo._internal.context.Context_context.Context;
    function get_context():stdgo._internal.context.Context_context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context_context.Context):stdgo._internal.context.Context_context.Context {
        this.context = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context_context.Context) this = new stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx(context);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_conn_static_extension) @:dox(hide) abstract T_conn(stdgo._internal.net.Net_t_conn.T_conn) from stdgo._internal.net.Net_t_conn.T_conn to stdgo._internal.net.Net_t_conn.T_conn {
    public function new() this = new stdgo._internal.net.Net_t_conn.T_conn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_canceledError_static_extension) @:dox(hide) abstract T_canceledError(stdgo._internal.net.Net_t_cancelederror.T_canceledError) from stdgo._internal.net.Net_t_cancelederror.T_canceledError to stdgo._internal.net.Net_t_cancelederror.T_canceledError {
    public function new() this = new stdgo._internal.net.Net_t_cancelederror.T_canceledError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.OpError_static_extension) abstract OpError(stdgo._internal.net.Net_operror.OpError) from stdgo._internal.net.Net_operror.OpError to stdgo._internal.net.Net_operror.OpError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var net(get, set) : String;
    function get_net():String return this.net;
    function set_net(v:String):String {
        this.net = (v : stdgo.GoString);
        return v;
    }
    public var source(get, set) : Addr;
    function get_source():Addr return this.source;
    function set_source(v:Addr):Addr {
        this.source = v;
        return v;
    }
    public var addr(get, set) : Addr;
    function get_addr():Addr return this.addr;
    function set_addr(v:Addr):Addr {
        this.addr = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?net:String, ?source:Addr, ?addr:Addr, ?err:stdgo.Error) this = new stdgo._internal.net.Net_operror.OpError((op : stdgo.GoString), (net : stdgo.GoString), source, addr, (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.ParseError_static_extension) abstract ParseError(stdgo._internal.net.Net_parseerror.ParseError) from stdgo._internal.net.Net_parseerror.ParseError to stdgo._internal.net.Net_parseerror.ParseError {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = (v : stdgo.GoString);
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?type:String, ?text:String) this = new stdgo._internal.net.Net_parseerror.ParseError((type : stdgo.GoString), (text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.AddrError_static_extension) abstract AddrError(stdgo._internal.net.Net_addrerror.AddrError) from stdgo._internal.net.Net_addrerror.AddrError to stdgo._internal.net.Net_addrerror.AddrError {
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var addr(get, set) : String;
    function get_addr():String return this.addr;
    function set_addr(v:String):String {
        this.addr = (v : stdgo.GoString);
        return v;
    }
    public function new(?err:String, ?addr:String) this = new stdgo._internal.net.Net_addrerror.AddrError((err : stdgo.GoString), (addr : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_timeoutError_static_extension) @:dox(hide) abstract T_timeoutError(stdgo._internal.net.Net_t_timeouterror.T_timeoutError) from stdgo._internal.net.Net_t_timeouterror.T_timeoutError to stdgo._internal.net.Net_t_timeouterror.T_timeoutError {
    public function new() this = new stdgo._internal.net.Net_t_timeouterror.T_timeoutError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.DNSConfigError_static_extension) abstract DNSConfigError(stdgo._internal.net.Net_dnsconfigerror.DNSConfigError) from stdgo._internal.net.Net_dnsconfigerror.DNSConfigError to stdgo._internal.net.Net_dnsconfigerror.DNSConfigError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.net.Net_dnsconfigerror.DNSConfigError((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.DNSError_static_extension) abstract DNSError(stdgo._internal.net.Net_dnserror.DNSError) from stdgo._internal.net.Net_dnserror.DNSError to stdgo._internal.net.Net_dnserror.DNSError {
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var server(get, set) : String;
    function get_server():String return this.server;
    function set_server(v:String):String {
        this.server = (v : stdgo.GoString);
        return v;
    }
    public var isTimeout(get, set) : Bool;
    function get_isTimeout():Bool return this.isTimeout;
    function set_isTimeout(v:Bool):Bool {
        this.isTimeout = v;
        return v;
    }
    public var isTemporary(get, set) : Bool;
    function get_isTemporary():Bool return this.isTemporary;
    function set_isTemporary(v:Bool):Bool {
        this.isTemporary = v;
        return v;
    }
    public var isNotFound(get, set) : Bool;
    function get_isNotFound():Bool return this.isNotFound;
    function set_isNotFound(v:Bool):Bool {
        this.isNotFound = v;
        return v;
    }
    public function new(?err:String, ?name:String, ?server:String, ?isTimeout:Bool, ?isTemporary:Bool, ?isNotFound:Bool) this = new stdgo._internal.net.Net_dnserror.DNSError((err : stdgo.GoString), (name : stdgo.GoString), (server : stdgo.GoString), isTimeout, isTemporary, isNotFound);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_writerOnly_static_extension) @:dox(hide) abstract T_writerOnly(stdgo._internal.net.Net_t_writeronly.T_writerOnly) from stdgo._internal.net.Net_t_writeronly.T_writerOnly to stdgo._internal.net.Net_t_writeronly.T_writerOnly {
    public var writer(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_writer():stdgo._internal.io.Io_writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.net.Net_t_writeronly.T_writerOnly(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_fakeNetAddr_static_extension) @:dox(hide) abstract T_fakeNetAddr(stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr) from stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr to stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr {
    public function new() this = new stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_fakeNetFD_static_extension) @:dox(hide) abstract T_fakeNetFD(stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD) from stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD to stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD {
    public function new() this = new stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_bufferedPipe_static_extension) @:dox(hide) abstract T_bufferedPipe(stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe) from stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe to stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe {
    public function new() this = new stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_netFD_static_extension) @:dox(hide) abstract T_netFD(stdgo._internal.net.Net_t_netfd.T_netFD) from stdgo._internal.net.Net_t_netfd.T_netFD to stdgo._internal.net.Net_t_netfd.T_netFD {
    public function new() this = new stdgo._internal.net.Net_t_netfd.T_netFD();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_nsswitchConfig_static_extension) @:dox(hide) abstract T_nsswitchConfig(stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig) from stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig to stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig {
    public function new() this = new stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_nssConf_static_extension) @:dox(hide) abstract T_nssConf(stdgo._internal.net.Net_t_nssconf.T_nssConf) from stdgo._internal.net.Net_t_nssconf.T_nssConf to stdgo._internal.net.Net_t_nssconf.T_nssConf {
    public function new() this = new stdgo._internal.net.Net_t_nssconf.T_nssConf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_nssSource_static_extension) @:dox(hide) abstract T_nssSource(stdgo._internal.net.Net_t_nsssource.T_nssSource) from stdgo._internal.net.Net_t_nsssource.T_nssSource to stdgo._internal.net.Net_t_nsssource.T_nssSource {
    public function new() this = new stdgo._internal.net.Net_t_nsssource.T_nssSource();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_nssCriterion_static_extension) @:dox(hide) abstract T_nssCriterion(stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion) from stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion to stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion {
    public function new() this = new stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_file_static_extension) @:dox(hide) abstract T_file(stdgo._internal.net.Net_t_file.T_file) from stdgo._internal.net.Net_t_file.T_file to stdgo._internal.net.Net_t_file.T_file {
    public function new() this = new stdgo._internal.net.Net_t_file.T_file();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_pipeDeadline_static_extension) @:dox(hide) abstract T_pipeDeadline(stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline) from stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline to stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline {
    public function new() this = new stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_pipeAddr_static_extension) @:dox(hide) abstract T_pipeAddr(stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr) from stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr to stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr {
    public function new() this = new stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_pipe_static_extension) @:dox(hide) abstract T_pipe(stdgo._internal.net.Net_t_pipe.T_pipe) from stdgo._internal.net.Net_t_pipe.T_pipe to stdgo._internal.net.Net_t_pipe.T_pipe {
    public function new() this = new stdgo._internal.net.Net_t_pipe.T_pipe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_rawConn_static_extension) @:dox(hide) abstract T_rawConn(stdgo._internal.net.Net_t_rawconn.T_rawConn) from stdgo._internal.net.Net_t_rawconn.T_rawConn to stdgo._internal.net.Net_t_rawconn.T_rawConn {
    public function new() this = new stdgo._internal.net.Net_t_rawconn.T_rawConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_rawListener_static_extension) @:dox(hide) abstract T_rawListener(stdgo._internal.net.Net_t_rawlistener.T_rawListener) from stdgo._internal.net.Net_t_rawlistener.T_rawListener to stdgo._internal.net.Net_t_rawlistener.T_rawListener {
    public function new() this = new stdgo._internal.net.Net_t_rawlistener.T_rawListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.TCPAddr_static_extension) abstract TCPAddr(stdgo._internal.net.Net_tcpaddr.TCPAddr) from stdgo._internal.net.Net_tcpaddr.TCPAddr to stdgo._internal.net.Net_tcpaddr.TCPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = (v : stdgo.GoString);
        return v;
    }
    public function new(?iP:IP, ?port:StdTypes.Int, ?zone:String) this = new stdgo._internal.net.Net_tcpaddr.TCPAddr(iP, (port : stdgo.GoInt), (zone : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.TCPConn_static_extension) abstract TCPConn(stdgo._internal.net.Net_tcpconn.TCPConn) from stdgo._internal.net.Net_tcpconn.TCPConn to stdgo._internal.net.Net_tcpconn.TCPConn {
    public function new() this = new stdgo._internal.net.Net_tcpconn.TCPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.TCPListener_static_extension) abstract TCPListener(stdgo._internal.net.Net_tcplistener.TCPListener) from stdgo._internal.net.Net_tcplistener.TCPListener to stdgo._internal.net.Net_tcplistener.TCPListener {
    public function new() this = new stdgo._internal.net.Net_tcplistener.TCPListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UDPAddr_static_extension) abstract UDPAddr(stdgo._internal.net.Net_udpaddr.UDPAddr) from stdgo._internal.net.Net_udpaddr.UDPAddr to stdgo._internal.net.Net_udpaddr.UDPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = (v : stdgo.GoString);
        return v;
    }
    public function new(?iP:IP, ?port:StdTypes.Int, ?zone:String) this = new stdgo._internal.net.Net_udpaddr.UDPAddr(iP, (port : stdgo.GoInt), (zone : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.T_addrPortUDPAddr_static_extension) @:dox(hide) abstract T_addrPortUDPAddr(stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr) from stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr to stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr {
    public var addrPort(get, set) : stdgo._internal.net.netip.Netip_addrport.AddrPort;
    function get_addrPort():stdgo._internal.net.netip.Netip_addrport.AddrPort return this.addrPort;
    function set_addrPort(v:stdgo._internal.net.netip.Netip_addrport.AddrPort):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        this.addrPort = v;
        return v;
    }
    public function new(?addrPort:stdgo._internal.net.netip.Netip_addrport.AddrPort) this = new stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr(addrPort);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UDPConn_static_extension) abstract UDPConn(stdgo._internal.net.Net_udpconn.UDPConn) from stdgo._internal.net.Net_udpconn.UDPConn to stdgo._internal.net.Net_udpconn.UDPConn {
    public function new() this = new stdgo._internal.net.Net_udpconn.UDPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UnixAddr_static_extension) abstract UnixAddr(stdgo._internal.net.Net_unixaddr.UnixAddr) from stdgo._internal.net.Net_unixaddr.UnixAddr to stdgo._internal.net.Net_unixaddr.UnixAddr {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var net(get, set) : String;
    function get_net():String return this.net;
    function set_net(v:String):String {
        this.net = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?net:String) this = new stdgo._internal.net.Net_unixaddr.UnixAddr((name : stdgo.GoString), (net : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UnixConn_static_extension) abstract UnixConn(stdgo._internal.net.Net_unixconn.UnixConn) from stdgo._internal.net.Net_unixconn.UnixConn to stdgo._internal.net.Net_unixconn.UnixConn {
    public function new() this = new stdgo._internal.net.Net_unixconn.UnixConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UnixListener_static_extension) abstract UnixListener(stdgo._internal.net.Net_unixlistener.UnixListener) from stdgo._internal.net.Net_unixlistener.UnixListener to stdgo._internal.net.Net_unixlistener.UnixListener {
    public function new() this = new stdgo._internal.net.Net_unixlistener.UnixListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.net.Net_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.net.Net_t__struct_0.T__struct_0;
@:dox(hide) typedef T_policyTable = stdgo._internal.net.Net_t_policytable.T_policyTable;
@:dox(hide) typedef T_scope = stdgo._internal.net.Net_t_scope.T_scope;
@:dox(hide) typedef T_mptcpStatus = stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus;
@:dox(hide) typedef T_byPriorityWeight = stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight;
@:dox(hide) typedef T_byPref = stdgo._internal.net.Net_t_bypref.T_byPref;
@:dox(hide) typedef T_fileAddr = stdgo._internal.net.Net_t_fileaddr.T_fileAddr;
typedef Flags = stdgo._internal.net.Net_flags.Flags;
typedef IP = stdgo._internal.net.Net_ip.IP;
typedef IPMask = stdgo._internal.net.Net_ipmask.IPMask;
@:dox(hide) typedef T_addrList = stdgo._internal.net.Net_t_addrlist.T_addrList;
typedef HardwareAddr = stdgo._internal.net.Net_hardwareaddr.HardwareAddr;
typedef UnknownNetworkError = stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError;
typedef InvalidAddrError = stdgo._internal.net.Net_invalidaddrerror.InvalidAddrError;
typedef Buffers = stdgo._internal.net.Net_buffers.Buffers;
@:dox(hide) typedef T_ipAttrPointer = stdgo._internal.net.Net_t_ipattrpointer.T_ipAttrPointer;
@:dox(hide) class T_ipAttr_static_extension {

}
@:dox(hide) typedef T_byRFC6724Pointer = stdgo._internal.net.Net_t_byrfc6724pointer.T_byRFC6724Pointer;
@:dox(hide) class T_byRFC6724_static_extension {
    static public function less(_s:T_byRFC6724, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.Net_t_byrfc6724_static_extension.T_byRFC6724_static_extension.less(_s, _i, _j);
    }
    static public function swap(_s:T_byRFC6724, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.Net_t_byrfc6724_static_extension.T_byRFC6724_static_extension.swap(_s, _i, _j);
    }
    static public function len(_s:T_byRFC6724):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>);
        return stdgo._internal.net.Net_t_byrfc6724_static_extension.T_byRFC6724_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_policyTableEntryPointer = stdgo._internal.net.Net_t_policytableentrypointer.T_policyTableEntryPointer;
@:dox(hide) class T_policyTableEntry_static_extension {

}
typedef DialerPointer = stdgo._internal.net.Net_dialerpointer.DialerPointer;
class Dialer_static_extension {
    static public function dialContext(_d:Dialer, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension.dialContext(_d, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dial(_d:Dialer, _network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension.dial(_d, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setMultipathTCP(_d:Dialer, _use:Bool):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
        stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension.setMultipathTCP(_d, _use);
    }
    static public function multipathTCP(_d:Dialer):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
        return stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension.multipathTCP(_d);
    }
}
@:dox(hide) typedef T_sysDialerPointer = stdgo._internal.net.Net_t_sysdialerpointer.T_sysDialerPointer;
@:dox(hide) class T_sysDialer_static_extension {
    public static function _resolver(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Resolver {
        return stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension._resolver(__self__);
    }
    public static function _fallbackDelay(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension._fallbackDelay(__self__);
    }
    public static function _dualStack(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Bool {
        return stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension._dualStack(__self__);
    }
    public static function _deadline(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension._deadline(__self__, _0, _1);
    }
    public static function setMultipathTCP(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:Bool):Void {
        stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension.setMultipathTCP(__self__, _0);
    }
    public static function multipathTCP(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Bool {
        return stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension.multipathTCP(__self__);
    }
    public static function dialContext(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo._internal.context.Context_context.Context, _1:String, _2:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension.dialContext(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function dial(__self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:String, _1:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension.dial(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ListenConfigPointer = stdgo._internal.net.Net_listenconfigpointer.ListenConfigPointer;
class ListenConfig_static_extension {
    static public function listenPacket(_lc:ListenConfig, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _address:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension.listenPacket(_lc, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function listen(_lc:ListenConfig, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _address:String):stdgo.Tuple<Listener, stdgo.Error> {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension.listen(_lc, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setMultipathTCP(_lc:ListenConfig, _use:Bool):Void {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>);
        stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension.setMultipathTCP(_lc, _use);
    }
    static public function multipathTCP(_lc:ListenConfig):Bool {
        final _lc = (_lc : stdgo.Ref<stdgo._internal.net.Net_listenconfig.ListenConfig>);
        return stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension.multipathTCP(_lc);
    }
}
@:dox(hide) typedef T_sysListenerPointer = stdgo._internal.net.Net_t_syslistenerpointer.T_sysListenerPointer;
@:dox(hide) class T_sysListener_static_extension {
    public static function setMultipathTCP(__self__:stdgo._internal.net.Net_t_syslistener.T_sysListener, _0:Bool):Void {
        stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension.setMultipathTCP(__self__, _0);
    }
    public static function multipathTCP(__self__:stdgo._internal.net.Net_t_syslistener.T_sysListener):Bool {
        return stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension.multipathTCP(__self__);
    }
    public static function listenPacket(__self__:stdgo._internal.net.Net_t_syslistener.T_sysListener, _0:stdgo._internal.context.Context_context.Context, _1:String, _2:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension.listenPacket(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function listen(__self__:stdgo._internal.net.Net_t_syslistener.T_sysListener, _0:stdgo._internal.context.Context_context.Context, _1:String, _2:String):stdgo.Tuple<Listener, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension.listen(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SRVPointer = stdgo._internal.net.Net_srvpointer.SRVPointer;
class SRV_static_extension {

}
typedef MXPointer = stdgo._internal.net.Net_mxpointer.MXPointer;
class MX_static_extension {

}
typedef NSPointer = stdgo._internal.net.Net_nspointer.NSPointer;
class NS_static_extension {

}
@:dox(hide) typedef T_dnsConfigPointer = stdgo._internal.net.Net_t_dnsconfigpointer.T_dnsConfigPointer;
@:dox(hide) class T_dnsConfig_static_extension {

}
@:dox(hide) typedef T_byNamePointer = stdgo._internal.net.Net_t_bynamepointer.T_byNamePointer;
@:dox(hide) class T_byName_static_extension {

}
typedef InterfacePointer = stdgo._internal.net.Net_interfacepointer.InterfacePointer;
class Interface_static_extension {
    static public function multicastAddrs(_ifi:Interface):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        final _ifi = (_ifi : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>);
        return {
            final obj = stdgo._internal.net.Net_interface_static_extension.Interface_static_extension.multicastAddrs(_ifi);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function addrs(_ifi:Interface):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        final _ifi = (_ifi : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>);
        return {
            final obj = stdgo._internal.net.Net_interface_static_extension.Interface_static_extension.addrs(_ifi);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_ipv6ZoneCachePointer = stdgo._internal.net.Net_t_ipv6zonecachepointer.T_ipv6ZoneCachePointer;
@:dox(hide) class T_ipv6ZoneCache_static_extension {
    public static function _rUnlockSlow(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension._rUnlockSlow(__self__, _0);
    }
    public static function unlock(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void {
        stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.unlock(__self__);
    }
    public static function tryRLock(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Bool {
        return stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.tryRLock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Bool {
        return stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.tryLock(__self__);
    }
    public static function rUnlock(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void {
        stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.rUnlock(__self__);
    }
    public static function rLocker(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):stdgo._internal.sync.Sync_locker.Locker {
        return stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.rLocker(__self__);
    }
    public static function rLock(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void {
        stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.rLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.net.Net_t_ipv6zonecache.T_ipv6ZoneCache):Void {
        stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension.lock(__self__);
    }
}
typedef IPNetPointer = stdgo._internal.net.Net_ipnetpointer.IPNetPointer;
class IPNet_static_extension {
    static public function string(_n:IPNet):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>);
        return stdgo._internal.net.Net_ipnet_static_extension.IPNet_static_extension.string(_n);
    }
    static public function network(_n:IPNet):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>);
        return stdgo._internal.net.Net_ipnet_static_extension.IPNet_static_extension.network(_n);
    }
    static public function contains(_n:IPNet, _ip:IP):Bool {
        final _n = (_n : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>);
        return stdgo._internal.net.Net_ipnet_static_extension.IPNet_static_extension.contains(_n, _ip);
    }
}
typedef IPAddrPointer = stdgo._internal.net.Net_ipaddrpointer.IPAddrPointer;
class IPAddr_static_extension {
    static public function string(_a:IPAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return stdgo._internal.net.Net_ipaddr_static_extension.IPAddr_static_extension.string(_a);
    }
    static public function network(_a:IPAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return stdgo._internal.net.Net_ipaddr_static_extension.IPAddr_static_extension.network(_a);
    }
}
typedef IPConnPointer = stdgo._internal.net.Net_ipconnpointer.IPConnPointer;
class IPConn_static_extension {
    static public function writeMsgIP(_c:IPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:IPAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.writeMsgIP(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:IPConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToIP(_c:IPConn, _b:Array<std.UInt>, _addr:IPAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.writeToIP(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgIP(_c:IPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, IPAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.readMsgIP(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFrom(_c:IPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromIP(_c:IPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, IPAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.readFromIP(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscallConn(_c:IPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_ipconn.IPConn):Bool {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_ipconn.IPConn):Addr {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_ipconn.IPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_ipconn.IPConn):Addr {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo.Error {
        return stdgo._internal.net.Net_ipconn_static_extension.IPConn_static_extension.close(__self__);
    }
}
@:dox(hide) typedef T_ipStackCapabilitiesPointer = stdgo._internal.net.Net_t_ipstackcapabilitiespointer.T_ipStackCapabilitiesPointer;
@:dox(hide) class T_ipStackCapabilities_static_extension {
    public static function _doSlow(__self__:stdgo._internal.net.Net_t_ipstackcapabilities.T_ipStackCapabilities, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.net.Net_t_ipstackcapabilities_static_extension.T_ipStackCapabilities_static_extension._doSlow(__self__, _0);
    }
    public static function do_(__self__:stdgo._internal.net.Net_t_ipstackcapabilities.T_ipStackCapabilities, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.net.Net_t_ipstackcapabilities_static_extension.T_ipStackCapabilities_static_extension.do_(__self__, _0);
    }
}
typedef ResolverPointer = stdgo._internal.net.Net_resolverpointer.ResolverPointer;
class Resolver_static_extension {
    static public function lookupAddr(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _addr:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupAddr(_r, _ctx, _addr);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupTXT(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _name:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupTXT(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupNS(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _name:String):stdgo.Tuple<Array<NS>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupNS(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupMX(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _name:String):stdgo.Tuple<Array<MX>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupMX(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupSRV(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _service:String, _proto:String, _name:String):stdgo.Tuple.Tuple3<String, Array<SRV>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _service = (_service : stdgo.GoString);
        final _proto = (_proto : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupSRV(_r, _ctx, _service, _proto, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function lookupCNAME(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _host:String):stdgo.Tuple<String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupCNAME(_r, _ctx, _host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookupPort(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _service:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _network = (_network : stdgo.GoString);
        final _service = (_service : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupPort(_r, _ctx, _network, _service);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookupNetIP(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _host:String):stdgo.Tuple<Array<stdgo._internal.net.netip.Netip_addr.Addr>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _network = (_network : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupNetIP(_r, _ctx, _network, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupIP(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _host:String):stdgo.Tuple<Array<IP>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _network = (_network : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupIP(_r, _ctx, _network, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupIPAddr(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _host:String):stdgo.Tuple<Array<IPAddr>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupIPAddr(_r, _ctx, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupHost(_r:Resolver, _ctx:stdgo._internal.context.Context_context.Context, _host:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension.lookupHost(_r, _ctx, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_onlyValuesCtxPointer = stdgo._internal.net.Net_t_onlyvaluesctxpointer.T_onlyValuesCtxPointer;
@:dox(hide) class T_onlyValuesCtx_static_extension {
    static public function value(_ovc:T_onlyValuesCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _ovc = (_ovc : stdgo.Ref<stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx>);
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.net.Net_t_onlyvaluesctx_static_extension.T_onlyValuesCtx_static_extension.value(_ovc, _key);
    }
    public static function err(__self__:stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx):stdgo.Error {
        return stdgo._internal.net.Net_t_onlyvaluesctx_static_extension.T_onlyValuesCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx):stdgo.Chan<{ }> {
        return stdgo._internal.net.Net_t_onlyvaluesctx_static_extension.T_onlyValuesCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.net.Net_t_onlyvaluesctx.T_onlyValuesCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.net.Net_t_onlyvaluesctx_static_extension.T_onlyValuesCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_connPointer = stdgo._internal.net.Net_t_connpointer.T_connPointer;
@:dox(hide) class T_conn_static_extension {
    static public function file(_c:T_conn):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return {
            final obj = stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.file(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setWriteBuffer(_c:T_conn, _bytes:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        final _bytes = (_bytes : stdgo.GoInt);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.setWriteBuffer(_c, _bytes);
    }
    static public function setReadBuffer(_c:T_conn, _bytes:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        final _bytes = (_bytes : stdgo.GoInt);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.setReadBuffer(_c, _bytes);
    }
    static public function setWriteDeadline(_c:T_conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.setWriteDeadline(_c, _t);
    }
    static public function setReadDeadline(_c:T_conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.setReadDeadline(_c, _t);
    }
    static public function setDeadline(_c:T_conn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.setDeadline(_c, _t);
    }
    static public function remoteAddr(_c:T_conn):Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.remoteAddr(_c);
    }
    static public function localAddr(_c:T_conn):Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.localAddr(_c);
    }
    static public function close(_c:T_conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        return stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.close(_c);
    }
    static public function write(_c:T_conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.write(_c, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_c:T_conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_conn_static_extension.T_conn_static_extension.read(_c, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_canceledErrorPointer = stdgo._internal.net.Net_t_cancelederrorpointer.T_canceledErrorPointer;
@:dox(hide) class T_canceledError_static_extension {
    static public function is_(_:T_canceledError, _err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.net.Net_t_cancelederror_static_extension.T_canceledError_static_extension.is_(_, _err);
    }
    static public function error(_:T_canceledError):String {
        return stdgo._internal.net.Net_t_cancelederror_static_extension.T_canceledError_static_extension.error(_);
    }
}
typedef OpErrorPointer = stdgo._internal.net.Net_operrorpointer.OpErrorPointer;
class OpError_static_extension {
    static public function temporary(_e:OpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>);
        return stdgo._internal.net.Net_operror_static_extension.OpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:OpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>);
        return stdgo._internal.net.Net_operror_static_extension.OpError_static_extension.timeout(_e);
    }
    static public function error(_e:OpError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>);
        return stdgo._internal.net.Net_operror_static_extension.OpError_static_extension.error(_e);
    }
    static public function unwrap(_e:OpError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>);
        return stdgo._internal.net.Net_operror_static_extension.OpError_static_extension.unwrap(_e);
    }
}
typedef ParseErrorPointer = stdgo._internal.net.Net_parseerrorpointer.ParseErrorPointer;
class ParseError_static_extension {
    static public function temporary(_e:ParseError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>);
        return stdgo._internal.net.Net_parseerror_static_extension.ParseError_static_extension.temporary(_e);
    }
    static public function timeout(_e:ParseError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>);
        return stdgo._internal.net.Net_parseerror_static_extension.ParseError_static_extension.timeout(_e);
    }
    static public function error(_e:ParseError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>);
        return stdgo._internal.net.Net_parseerror_static_extension.ParseError_static_extension.error(_e);
    }
}
typedef AddrErrorPointer = stdgo._internal.net.Net_addrerrorpointer.AddrErrorPointer;
class AddrError_static_extension {
    static public function temporary(_e:AddrError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>);
        return stdgo._internal.net.Net_addrerror_static_extension.AddrError_static_extension.temporary(_e);
    }
    static public function timeout(_e:AddrError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>);
        return stdgo._internal.net.Net_addrerror_static_extension.AddrError_static_extension.timeout(_e);
    }
    static public function error(_e:AddrError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>);
        return stdgo._internal.net.Net_addrerror_static_extension.AddrError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_timeoutErrorPointer = stdgo._internal.net.Net_t_timeouterrorpointer.T_timeoutErrorPointer;
@:dox(hide) class T_timeoutError_static_extension {
    static public function is_(_e:T_timeoutError, _err:stdgo.Error):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.net.Net_t_timeouterror_static_extension.T_timeoutError_static_extension.is_(_e, _err);
    }
    static public function temporary(_e:T_timeoutError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>);
        return stdgo._internal.net.Net_t_timeouterror_static_extension.T_timeoutError_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_timeoutError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>);
        return stdgo._internal.net.Net_t_timeouterror_static_extension.T_timeoutError_static_extension.timeout(_e);
    }
    static public function error(_e:T_timeoutError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_t_timeouterror.T_timeoutError>);
        return stdgo._internal.net.Net_t_timeouterror_static_extension.T_timeoutError_static_extension.error(_e);
    }
}
typedef DNSConfigErrorPointer = stdgo._internal.net.Net_dnsconfigerrorpointer.DNSConfigErrorPointer;
class DNSConfigError_static_extension {
    static public function temporary(_e:DNSConfigError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnsconfigerror.DNSConfigError>);
        return stdgo._internal.net.Net_dnsconfigerror_static_extension.DNSConfigError_static_extension.temporary(_e);
    }
    static public function timeout(_e:DNSConfigError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnsconfigerror.DNSConfigError>);
        return stdgo._internal.net.Net_dnsconfigerror_static_extension.DNSConfigError_static_extension.timeout(_e);
    }
    static public function error(_e:DNSConfigError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnsconfigerror.DNSConfigError>);
        return stdgo._internal.net.Net_dnsconfigerror_static_extension.DNSConfigError_static_extension.error(_e);
    }
    static public function unwrap(_e:DNSConfigError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnsconfigerror.DNSConfigError>);
        return stdgo._internal.net.Net_dnsconfigerror_static_extension.DNSConfigError_static_extension.unwrap(_e);
    }
}
typedef DNSErrorPointer = stdgo._internal.net.Net_dnserrorpointer.DNSErrorPointer;
class DNSError_static_extension {
    static public function temporary(_e:DNSError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>);
        return stdgo._internal.net.Net_dnserror_static_extension.DNSError_static_extension.temporary(_e);
    }
    static public function timeout(_e:DNSError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>);
        return stdgo._internal.net.Net_dnserror_static_extension.DNSError_static_extension.timeout(_e);
    }
    static public function error(_e:DNSError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>);
        return stdgo._internal.net.Net_dnserror_static_extension.DNSError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_writerOnlyPointer = stdgo._internal.net.Net_t_writeronlypointer.T_writerOnlyPointer;
@:dox(hide) class T_writerOnly_static_extension {
    public static function write(__self__:stdgo._internal.net.Net_t_writeronly.T_writerOnly, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_writeronly_static_extension.T_writerOnly_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_fakeNetAddrPointer = stdgo._internal.net.Net_t_fakenetaddrpointer.T_fakeNetAddrPointer;
@:dox(hide) class T_fakeNetAddr_static_extension {

}
@:dox(hide) typedef T_fakeNetFDPointer = stdgo._internal.net.Net_t_fakenetfdpointer.T_fakeNetFDPointer;
@:dox(hide) class T_fakeNetFD_static_extension {
    static public function setWriteDeadline(_fd:T_fakeNetFD, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
        return stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension.setWriteDeadline(_fd, _t);
    }
    static public function setReadDeadline(_fd:T_fakeNetFD, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
        return stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension.setReadDeadline(_fd, _t);
    }
    static public function setDeadline(_fd:T_fakeNetFD, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
        return stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension.setDeadline(_fd, _t);
    }
    static public function close(_fd:T_fakeNetFD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
        return stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension.close(_fd);
    }
    static public function write(_fd:T_fakeNetFD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension.write(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_fd:T_fakeNetFD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension.read(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_bufferedPipePointer = stdgo._internal.net.Net_t_bufferedpipepointer.T_bufferedPipePointer;
@:dox(hide) class T_bufferedPipe_static_extension {
    static public function setWriteDeadline(_p:T_bufferedPipe, _t:stdgo._internal.time.Time_time.Time):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
        stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension.setWriteDeadline(_p, _t);
    }
    static public function setReadDeadline(_p:T_bufferedPipe, _t:stdgo._internal.time.Time_time.Time):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
        stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension.setReadDeadline(_p, _t);
    }
    static public function close(_p:T_bufferedPipe):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
        stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension.close(_p);
    }
    static public function write(_p:T_bufferedPipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_bufferedPipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension.read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_netFDPointer = stdgo._internal.net.Net_t_netfdpointer.T_netFDPointer;
@:dox(hide) class T_netFD_static_extension {
    public static function _writeToInet6(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._writeToInet6(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _writeToInet4(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._writeToInet4(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _writeTo(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._writeTo(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _writeMsgInet6(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._writeMsgInet6(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _writeMsgInet4(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._writeMsgInet4(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _writeMsg(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._writeMsg(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _readMsgInet6(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:StdTypes.Int, _3:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.GoInt);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._readMsgInet6(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function _readMsgInet4(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:StdTypes.Int, _3:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.GoInt);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._readMsgInet4(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function _readMsg(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._readMsg(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _readFromInet6(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._readFromInet6(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readFromInet4(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._readFromInet4(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readFrom(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _dup(__self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._dup(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _connect(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, _2:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo.Tuple<stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._connect(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _closeWrite(__self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Error {
        return stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._closeWrite(__self__);
    }
    public static function _closeRead(__self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Error {
        return stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._closeRead(__self__);
    }
    public static function _accept(__self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Tuple<T_netFD, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension._accept(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension.setDeadline(__self__, _0);
    }
    public static function read(__self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Error {
        return stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension.close(__self__);
    }
}
@:dox(hide) typedef T_nsswitchConfigPointer = stdgo._internal.net.Net_t_nsswitchconfigpointer.T_nsswitchConfigPointer;
@:dox(hide) class T_nsswitchConfig_static_extension {

}
@:dox(hide) typedef T_nssConfPointer = stdgo._internal.net.Net_t_nssconfpointer.T_nssConfPointer;
@:dox(hide) class T_nssConf_static_extension {

}
@:dox(hide) typedef T_nssSourcePointer = stdgo._internal.net.Net_t_nsssourcepointer.T_nssSourcePointer;
@:dox(hide) class T_nssSource_static_extension {

}
@:dox(hide) typedef T_nssCriterionPointer = stdgo._internal.net.Net_t_nsscriterionpointer.T_nssCriterionPointer;
@:dox(hide) class T_nssCriterion_static_extension {

}
@:dox(hide) typedef T_filePointer = stdgo._internal.net.Net_t_filepointer.T_filePointer;
@:dox(hide) class T_file_static_extension {

}
@:dox(hide) typedef T_pipeDeadlinePointer = stdgo._internal.net.Net_t_pipedeadlinepointer.T_pipeDeadlinePointer;
@:dox(hide) class T_pipeDeadline_static_extension {

}
@:dox(hide) typedef T_pipeAddrPointer = stdgo._internal.net.Net_t_pipeaddrpointer.T_pipeAddrPointer;
@:dox(hide) class T_pipeAddr_static_extension {
    static public function string(_:T_pipeAddr):String {
        return stdgo._internal.net.Net_t_pipeaddr_static_extension.T_pipeAddr_static_extension.string(_);
    }
    static public function network(_:T_pipeAddr):String {
        return stdgo._internal.net.Net_t_pipeaddr_static_extension.T_pipeAddr_static_extension.network(_);
    }
}
@:dox(hide) typedef T_pipePointer = stdgo._internal.net.Net_t_pipepointer.T_pipePointer;
@:dox(hide) class T_pipe_static_extension {
    static public function close(_p:T_pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        return stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.close(_p);
    }
    static public function setWriteDeadline(_p:T_pipe, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        return stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.setWriteDeadline(_p, _t);
    }
    static public function setReadDeadline(_p:T_pipe, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        return stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.setReadDeadline(_p, _t);
    }
    static public function setDeadline(_p:T_pipe, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        return stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.setDeadline(_p, _t);
    }
    static public function write(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function remoteAddr(_:T_pipe):Addr {
        final _ = (_ : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        return stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.remoteAddr(_);
    }
    static public function localAddr(_:T_pipe):Addr {
        final _ = (_ : stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>);
        return stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension.localAddr(_);
    }
}
@:dox(hide) typedef T_rawConnPointer = stdgo._internal.net.Net_t_rawconnpointer.T_rawConnPointer;
@:dox(hide) class T_rawConn_static_extension {
    static public function pollFD(_c:T_rawConn):stdgo._internal.internal.poll.Poll_fd.FD {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>);
        return stdgo._internal.net.Net_t_rawconn_static_extension.T_rawConn_static_extension.pollFD(_c);
    }
    static public function write(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>);
        final _f = _f;
        return stdgo._internal.net.Net_t_rawconn_static_extension.T_rawConn_static_extension.write(_c, _f);
    }
    static public function read(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>);
        final _f = _f;
        return stdgo._internal.net.Net_t_rawconn_static_extension.T_rawConn_static_extension.read(_c, _f);
    }
    static public function control(_c:T_rawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>);
        final _f = _f;
        return stdgo._internal.net.Net_t_rawconn_static_extension.T_rawConn_static_extension.control(_c, _f);
    }
}
@:dox(hide) typedef T_rawListenerPointer = stdgo._internal.net.Net_t_rawlistenerpointer.T_rawListenerPointer;
@:dox(hide) class T_rawListener_static_extension {
    static public function write(_l:T_rawListener, _0:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>);
        final _0 = _0;
        return stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension.write(_l, _0);
    }
    static public function read(_l:T_rawListener, _0:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>);
        final _0 = _0;
        return stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension.read(_l, _0);
    }
    public static function _ok(__self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener):Bool {
        return stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension._ok(__self__);
    }
    public static function pollFD(__self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener):stdgo._internal.internal.poll.Poll_fd.FD {
        return stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension.pollFD(__self__);
    }
    public static function control(__self__:stdgo._internal.net.Net_t_rawlistener.T_rawListener, _0:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _0 = _0;
        return stdgo._internal.net.Net_t_rawlistener_static_extension.T_rawListener_static_extension.control(__self__, _0);
    }
}
typedef TCPAddrPointer = stdgo._internal.net.Net_tcpaddrpointer.TCPAddrPointer;
class TCPAddr_static_extension {
    static public function string(_a:TCPAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        return stdgo._internal.net.Net_tcpaddr_static_extension.TCPAddr_static_extension.string(_a);
    }
    static public function network(_a:TCPAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        return stdgo._internal.net.Net_tcpaddr_static_extension.TCPAddr_static_extension.network(_a);
    }
    static public function addrPort(_a:TCPAddr):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        return stdgo._internal.net.Net_tcpaddr_static_extension.TCPAddr_static_extension.addrPort(_a);
    }
}
typedef TCPConnPointer = stdgo._internal.net.Net_tcpconnpointer.TCPConnPointer;
class TCPConn_static_extension {
    static public function multipathTCP(_c:TCPConn):stdgo.Tuple<Bool, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return {
            final obj = stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.multipathTCP(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setNoDelay(_c:TCPConn, _noDelay:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setNoDelay(_c, _noDelay);
    }
    static public function setKeepAlivePeriod(_c:TCPConn, _d:stdgo._internal.time.Time_duration.Duration):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setKeepAlivePeriod(_c, _d);
    }
    static public function setKeepAlive(_c:TCPConn, _keepalive:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setKeepAlive(_c, _keepalive);
    }
    static public function setLinger(_c:TCPConn, _sec:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        final _sec = (_sec : stdgo.GoInt);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setLinger(_c, _sec);
    }
    static public function closeWrite(_c:TCPConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.closeWrite(_c);
    }
    static public function closeRead(_c:TCPConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.closeRead(_c);
    }
    static public function readFrom(_c:TCPConn, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return {
            final obj = stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.readFrom(_c, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_c:TCPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
        return {
            final obj = stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_tcpconn.TCPConn):Bool {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_tcpconn.TCPConn):Addr {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_tcpconn.TCPConn):Addr {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo.Error {
        return stdgo._internal.net.Net_tcpconn_static_extension.TCPConn_static_extension.close(__self__);
    }
}
typedef TCPListenerPointer = stdgo._internal.net.Net_tcplistenerpointer.TCPListenerPointer;
class TCPListener_static_extension {
    static public function file(_l:TCPListener):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.file(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setDeadline(_l:TCPListener, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.setDeadline(_l, _t);
    }
    static public function addr(_l:TCPListener):Addr {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.addr(_l);
    }
    static public function close(_l:TCPListener):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.close(_l);
    }
    static public function accept(_l:TCPListener):stdgo.Tuple<Conn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function acceptTCP(_l:TCPListener):stdgo.Tuple<TCPConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.acceptTCP(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_l:TCPListener):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension.syscallConn(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef UDPAddrPointer = stdgo._internal.net.Net_udpaddrpointer.UDPAddrPointer;
class UDPAddr_static_extension {
    static public function string(_a:UDPAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return stdgo._internal.net.Net_udpaddr_static_extension.UDPAddr_static_extension.string(_a);
    }
    static public function network(_a:UDPAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return stdgo._internal.net.Net_udpaddr_static_extension.UDPAddr_static_extension.network(_a);
    }
    static public function addrPort(_a:UDPAddr):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return stdgo._internal.net.Net_udpaddr_static_extension.UDPAddr_static_extension.addrPort(_a);
    }
}
@:dox(hide) typedef T_addrPortUDPAddrPointer = stdgo._internal.net.Net_t_addrportudpaddrpointer.T_addrPortUDPAddrPointer;
@:dox(hide) class T_addrPortUDPAddr_static_extension {
    static public function network(_:T_addrPortUDPAddr):String {
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.network(_);
    }
    public static function unmarshalText(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.unmarshalText(__self__, _0);
    }
    public static function unmarshalBinary(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.unmarshalBinary(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):String {
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.string(__self__);
    }
    public static function port(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):std.UInt {
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.port(__self__);
    }
    public static function marshalText(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.marshalText(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function marshalBinary(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.marshalBinary(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function isValid(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):Bool {
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.isValid(__self__);
    }
    public static function appendTo(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:Array<std.UInt>):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.appendTo(__self__, _0)) i];
    }
    public static function addr(__self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo._internal.net.netip.Netip_addr.Addr {
        return stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension.addr(__self__);
    }
}
typedef UDPConnPointer = stdgo._internal.net.Net_udpconnpointer.UDPConnPointer;
class UDPConn_static_extension {
    static public function writeMsgUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.writeMsgUDPAddrPort(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsgUDP(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:UDPAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.writeMsgUDP(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:UDPConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.writeToUDPAddrPort(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToUDP(_c:UDPConn, _b:Array<std.UInt>, _addr:UDPAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.writeToUDP(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo._internal.net.netip.Netip_addrport.AddrPort, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.readMsgUDPAddrPort(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readMsgUDP(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, UDPAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.readMsgUDP(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFromUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.net.netip.Netip_addrport.AddrPort, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.readFromUDPAddrPort(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFrom(_c:UDPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromUDP(_c:UDPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, UDPAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.readFromUDP(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscallConn(_c:UDPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_udpconn.UDPConn):Bool {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_udpconn.UDPConn):Addr {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_udpconn.UDPConn):Addr {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo.Error {
        return stdgo._internal.net.Net_udpconn_static_extension.UDPConn_static_extension.close(__self__);
    }
}
typedef UnixAddrPointer = stdgo._internal.net.Net_unixaddrpointer.UnixAddrPointer;
class UnixAddr_static_extension {
    static public function string(_a:UnixAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return stdgo._internal.net.Net_unixaddr_static_extension.UnixAddr_static_extension.string(_a);
    }
    static public function network(_a:UnixAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return stdgo._internal.net.Net_unixaddr_static_extension.UnixAddr_static_extension.network(_a);
    }
}
typedef UnixConnPointer = stdgo._internal.net.Net_unixconnpointer.UnixConnPointer;
class UnixConn_static_extension {
    static public function writeMsgUnix(_c:UnixConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:UnixAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.writeMsgUnix(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:UnixConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToUnix(_c:UnixConn, _b:Array<std.UInt>, _addr:UnixAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.writeToUnix(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgUnix(_c:UnixConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, UnixAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.readMsgUnix(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFrom(_c:UnixConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromUnix(_c:UnixConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, UnixAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.readFromUnix(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function closeWrite(_c:UnixConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.closeWrite(_c);
    }
    static public function closeRead(_c:UnixConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.closeRead(_c);
    }
    static public function syscallConn(_c:UnixConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_unixconn.UnixConn):Bool {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_unixconn.UnixConn):Addr {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_unixconn.UnixConn):Addr {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_unixconn.UnixConn):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_unixconn.UnixConn):stdgo.Error {
        return stdgo._internal.net.Net_unixconn_static_extension.UnixConn_static_extension.close(__self__);
    }
}
typedef UnixListenerPointer = stdgo._internal.net.Net_unixlistenerpointer.UnixListenerPointer;
class UnixListener_static_extension {
    static public function setUnlinkOnClose(_l:UnixListener, _unlink:Bool):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.setUnlinkOnClose(_l, _unlink);
    }
    static public function file(_l:UnixListener):stdgo.Tuple<stdgo._internal.os.Os_file.File, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.file(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setDeadline(_l:UnixListener, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.setDeadline(_l, _t);
    }
    static public function addr(_l:UnixListener):Addr {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.addr(_l);
    }
    static public function close(_l:UnixListener):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.close(_l);
    }
    static public function accept(_l:UnixListener):stdgo.Tuple<Conn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function acceptUnix(_l:UnixListener):stdgo.Tuple<UnixConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.acceptUnix(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_l:UnixListener):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension.syscallConn(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.net.Net_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_policyTablePointer = stdgo._internal.net.Net_t_policytablepointer.T_policyTablePointer;
@:dox(hide) class T_policyTable_static_extension {
    static public function classify(_t:T_policyTable, _ip:stdgo._internal.net.netip.Netip_addr.Addr):T_policyTableEntry {
        return stdgo._internal.net.Net_t_policytable_static_extension.T_policyTable_static_extension.classify(_t, _ip);
    }
}
@:dox(hide) typedef T_scopePointer = stdgo._internal.net.Net_t_scopepointer.T_scopePointer;
@:dox(hide) class T_scope_static_extension {

}
@:dox(hide) typedef T_mptcpStatusPointer = stdgo._internal.net.Net_t_mptcpstatuspointer.T_mptcpStatusPointer;
@:dox(hide) class T_mptcpStatus_static_extension {

}
@:dox(hide) typedef T_byPriorityWeightPointer = stdgo._internal.net.Net_t_bypriorityweightpointer.T_byPriorityWeightPointer;
@:dox(hide) class T_byPriorityWeight_static_extension {
    static public function swap(_s:T_byPriorityWeight, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.Net_t_bypriorityweight_static_extension.T_byPriorityWeight_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byPriorityWeight, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.Net_t_bypriorityweight_static_extension.T_byPriorityWeight_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byPriorityWeight):StdTypes.Int {
        return stdgo._internal.net.Net_t_bypriorityweight_static_extension.T_byPriorityWeight_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_byPrefPointer = stdgo._internal.net.Net_t_byprefpointer.T_byPrefPointer;
@:dox(hide) class T_byPref_static_extension {
    static public function swap(_s:T_byPref, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.Net_t_bypref_static_extension.T_byPref_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_byPref, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.Net_t_bypref_static_extension.T_byPref_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_byPref):StdTypes.Int {
        return stdgo._internal.net.Net_t_bypref_static_extension.T_byPref_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_fileAddrPointer = stdgo._internal.net.Net_t_fileaddrpointer.T_fileAddrPointer;
@:dox(hide) class T_fileAddr_static_extension {
    static public function string(_f:T_fileAddr):String {
        return stdgo._internal.net.Net_t_fileaddr_static_extension.T_fileAddr_static_extension.string(_f);
    }
    static public function network(_:T_fileAddr):String {
        return stdgo._internal.net.Net_t_fileaddr_static_extension.T_fileAddr_static_extension.network(_);
    }
}
typedef FlagsPointer = stdgo._internal.net.Net_flagspointer.FlagsPointer;
class Flags_static_extension {
    static public function string(_f:Flags):String {
        return stdgo._internal.net.Net_flags_static_extension.Flags_static_extension.string(_f);
    }
}
typedef IPPointer = stdgo._internal.net.Net_ippointer.IPPointer;
class IP_static_extension {
    static public function equal(_ip:IP, _x:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.equal(_ip, _x);
    }
    static public function unmarshalText(_ip:IP, _text:Array<std.UInt>):stdgo.Error {
        final _ip = (_ip : stdgo.Ref<stdgo._internal.net.Net_ip.IP>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.unmarshalText(_ip, _text);
    }
    static public function marshalText(_ip:IP):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_ip_static_extension.IP_static_extension.marshalText(_ip);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_ip:IP):String {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.string(_ip);
    }
    static public function mask(_ip:IP, _mask:IPMask):IP {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.mask(_ip, _mask);
    }
    static public function defaultMask(_ip:IP):IPMask {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.defaultMask(_ip);
    }
    static public function to16(_ip:IP):IP {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.to16(_ip);
    }
    static public function to4(_ip:IP):IP {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.to4(_ip);
    }
    static public function isGlobalUnicast(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isGlobalUnicast(_ip);
    }
    static public function isLinkLocalUnicast(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isLinkLocalUnicast(_ip);
    }
    static public function isLinkLocalMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isLinkLocalMulticast(_ip);
    }
    static public function isInterfaceLocalMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isInterfaceLocalMulticast(_ip);
    }
    static public function isMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isMulticast(_ip);
    }
    static public function isPrivate(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isPrivate(_ip);
    }
    static public function isLoopback(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isLoopback(_ip);
    }
    static public function isUnspecified(_ip:IP):Bool {
        return stdgo._internal.net.Net_ip_static_extension.IP_static_extension.isUnspecified(_ip);
    }
}
typedef IPMaskPointer = stdgo._internal.net.Net_ipmaskpointer.IPMaskPointer;
class IPMask_static_extension {
    static public function string(_m:IPMask):String {
        return stdgo._internal.net.Net_ipmask_static_extension.IPMask_static_extension.string(_m);
    }
    static public function size(_m:IPMask):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.net.Net_ipmask_static_extension.IPMask_static_extension.size(_m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_addrListPointer = stdgo._internal.net.Net_t_addrlistpointer.T_addrListPointer;
@:dox(hide) class T_addrList_static_extension {

}
typedef HardwareAddrPointer = stdgo._internal.net.Net_hardwareaddrpointer.HardwareAddrPointer;
class HardwareAddr_static_extension {
    static public function string(_a:HardwareAddr):String {
        return stdgo._internal.net.Net_hardwareaddr_static_extension.HardwareAddr_static_extension.string(_a);
    }
}
typedef UnknownNetworkErrorPointer = stdgo._internal.net.Net_unknownnetworkerrorpointer.UnknownNetworkErrorPointer;
class UnknownNetworkError_static_extension {
    static public function temporary(_e:UnknownNetworkError):Bool {
        return stdgo._internal.net.Net_unknownnetworkerror_static_extension.UnknownNetworkError_static_extension.temporary(_e);
    }
    static public function timeout(_e:UnknownNetworkError):Bool {
        return stdgo._internal.net.Net_unknownnetworkerror_static_extension.UnknownNetworkError_static_extension.timeout(_e);
    }
    static public function error(_e:UnknownNetworkError):String {
        return stdgo._internal.net.Net_unknownnetworkerror_static_extension.UnknownNetworkError_static_extension.error(_e);
    }
}
typedef InvalidAddrErrorPointer = stdgo._internal.net.Net_invalidaddrerrorpointer.InvalidAddrErrorPointer;
class InvalidAddrError_static_extension {
    static public function temporary(_e:InvalidAddrError):Bool {
        return stdgo._internal.net.Net_invalidaddrerror_static_extension.InvalidAddrError_static_extension.temporary(_e);
    }
    static public function timeout(_e:InvalidAddrError):Bool {
        return stdgo._internal.net.Net_invalidaddrerror_static_extension.InvalidAddrError_static_extension.timeout(_e);
    }
    static public function error(_e:InvalidAddrError):String {
        return stdgo._internal.net.Net_invalidaddrerror_static_extension.InvalidAddrError_static_extension.error(_e);
    }
}
typedef BuffersPointer = stdgo._internal.net.Net_bufferspointer.BuffersPointer;
class Buffers_static_extension {
    static public function read(_v:Buffers, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_buffers_static_extension.Buffers_static_extension.read(_v, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_v:Buffers, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers>);
        return {
            final obj = stdgo._internal.net.Net_buffers_static_extension.Buffers_static_extension.writeTo(_v, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * 
    * Package net provides a portable interface for network I/O, including
    * TCP/IP, UDP, domain name resolution, and Unix domain sockets.
    * 
    * Although the package provides access to low-level networking
    * primitives, most clients will need only the basic interface provided
    * by the Dial, Listen, and Accept functions and the associated
    * Conn and Listener interfaces. The crypto/tls package uses
    * the same interfaces and similar Dial and Listen functions.
    * 
    * The Dial function connects to a server:
    * 
    * 	conn, err := net.Dial("tcp", "golang.org:80")
    * 	if err != nil {
    * 		// handle error
    * 	}
    * 	fmt.Fprintf(conn, "GET / HTTP/1.0\r\n\r\n")
    * 	status, err := bufio.NewReader(conn).ReadString('\n')
    * 	// ...
    * 
    * The Listen function creates servers:
    * 
    * 	ln, err := net.Listen("tcp", ":8080")
    * 	if err != nil {
    * 		// handle error
    * 	}
    * 	for {
    * 		conn, err := ln.Accept()
    * 		if err != nil {
    * 			// handle error
    * 		}
    * 		go handleConnection(conn)
    * 	}
    * 
    * # Name Resolution
    * 
    * The method for resolving domain names, whether indirectly with functions like Dial
    * or directly with functions like LookupHost and LookupAddr, varies by operating system.
    * 
    * On Unix systems, the resolver has two options for resolving names.
    * It can use a pure Go resolver that sends DNS requests directly to the servers
    * listed in /etc/resolv.conf, or it can use a cgo-based resolver that calls C
    * library routines such as getaddrinfo and getnameinfo.
    * 
    * By default the pure Go resolver is used, because a blocked DNS request consumes
    * only a goroutine, while a blocked C call consumes an operating system thread.
    * When cgo is available, the cgo-based resolver is used instead under a variety of
    * conditions: on systems that do not let programs make direct DNS requests (OS X),
    * when the LOCALDOMAIN environment variable is present (even if empty),
    * when the RES_OPTIONS or HOSTALIASES environment variable is non-empty,
    * when the ASR_CONFIG environment variable is non-empty (OpenBSD only),
    * when /etc/resolv.conf or /etc/nsswitch.conf specify the use of features that the
    * Go resolver does not implement, and when the name being looked up ends in .local
    * or is an mDNS name.
    * 
    * The resolver decision can be overridden by setting the netdns value of the
    * GODEBUG environment variable (see package runtime) to go or cgo, as in:
    * 
    * 	export GODEBUG=netdns=go    # force pure Go resolver
    * 	export GODEBUG=netdns=cgo   # force native resolver (cgo, win32)
    * 
    * The decision can also be forced while building the Go source tree
    * by setting the netgo or netcgo build tag.
    * 
    * A numeric netdns setting, as in GODEBUG=netdns=1, causes the resolver
    * to print debugging information about its decisions.
    * To force a particular resolver while also printing debugging information,
    * join the two settings by a plus sign, as in GODEBUG=netdns=go+1.
    * 
    * On macOS, if Go code that uses the net package is built with
    * -buildmode=c-archive, linking the resulting archive into a C program
    * requires passing -lresolv when linking the C code.
    * 
    * On Plan 9, the resolver always accesses /net/cs and /net/dns.
    * 
    * On Windows, in Go 1.18.x and earlier, the resolver always used C
    * library functions, such as GetAddrInfo and DnsQuery.
    * 
**/
class Net {
    /**
        * Dial connects to the address on the named network.
        * 
        * Known networks are "tcp", "tcp4" (IPv4-only), "tcp6" (IPv6-only),
        * "udp", "udp4" (IPv4-only), "udp6" (IPv6-only), "ip", "ip4"
        * (IPv4-only), "ip6" (IPv6-only), "unix", "unixgram" and
        * "unixpacket".
        * 
        * For TCP and UDP networks, the address has the form "host:port".
        * The host must be a literal IP address, or a host name that can be
        * resolved to IP addresses.
        * The port must be a literal port number or a service name.
        * If the host is a literal IPv6 address it must be enclosed in square
        * brackets, as in "[2001:db8::1]:80" or "[fe80::1%zone]:80".
        * The zone specifies the scope of the literal IPv6 address as defined
        * in RFC 4007.
        * The functions JoinHostPort and SplitHostPort manipulate a pair of
        * host and port in this form.
        * When using TCP, and the host resolves to multiple IP addresses,
        * Dial will try each IP address in order until one succeeds.
        * 
        * Examples:
        * 
        * 	Dial("tcp", "golang.org:http")
        * 	Dial("tcp", "192.0.2.1:http")
        * 	Dial("tcp", "198.51.100.1:80")
        * 	Dial("udp", "[2001:db8::1]:domain")
        * 	Dial("udp", "[fe80::1%lo0]:53")
        * 	Dial("tcp", ":80")
        * 
        * For IP networks, the network must be "ip", "ip4" or "ip6" followed
        * by a colon and a literal protocol number or a protocol name, and
        * the address has the form "host". The host must be a literal IP
        * address or a literal IPv6 address with zone.
        * It depends on each operating system how the operating system
        * behaves with a non-well known protocol number such as "0" or "255".
        * 
        * Examples:
        * 
        * 	Dial("ip4:1", "192.0.2.1")
        * 	Dial("ip6:ipv6-icmp", "2001:db8::1")
        * 	Dial("ip6:58", "fe80::1%lo0")
        * 
        * For TCP, UDP and IP networks, if the host is empty or a literal
        * unspecified IP address, as in ":80", "0.0.0.0:80" or "[::]:80" for
        * TCP and UDP, "", "0.0.0.0" or "::" for IP, the local system is
        * assumed.
        * 
        * For Unix networks, the address must be a file system path.
    **/
    static public inline function dial(_network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DialTimeout acts like Dial but takes a timeout.
        * 
        * The timeout includes name resolution, if required.
        * When using TCP, and the host in the address parameter resolves to
        * multiple IP addresses, the timeout is spread over each consecutive
        * dial, such that each is given an appropriate fraction of the time
        * to connect.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function dialTimeout(_network:String, _address:String, _timeout:stdgo._internal.time.Time_duration.Duration):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_dialtimeout.dialTimeout(_network, _address, _timeout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Listen announces on the local network address.
        * 
        * The network must be "tcp", "tcp4", "tcp6", "unix" or "unixpacket".
        * 
        * For TCP networks, if the host in the address parameter is empty or
        * a literal unspecified IP address, Listen listens on all available
        * unicast and anycast IP addresses of the local system.
        * To only use IPv4, use network "tcp4".
        * The address can use a host name, but this is not recommended,
        * because it will create a listener for at most one of the host's IP
        * addresses.
        * If the port in the address parameter is empty or "0", as in
        * "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        * The Addr method of Listener can be used to discover the chosen
        * port.
        * 
        * See func Dial for a description of the network and address
        * parameters.
        * 
        * Listen uses context.Background internally; to specify the context, use
        * ListenConfig.Listen.
    **/
    static public inline function listen(_network:String, _address:String):stdgo.Tuple<Listener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_listen.listen(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenPacket announces on the local network address.
        * 
        * The network must be "udp", "udp4", "udp6", "unixgram", or an IP
        * transport. The IP transports are "ip", "ip4", or "ip6" followed by
        * a colon and a literal protocol number or a protocol name, as in
        * "ip:1" or "ip:icmp".
        * 
        * For UDP and IP networks, if the host in the address parameter is
        * empty or a literal unspecified IP address, ListenPacket listens on
        * all available IP addresses of the local system except multicast IP
        * addresses.
        * To only use IPv4, use network "udp4" or "ip4:proto".
        * The address can use a host name, but this is not recommended,
        * because it will create a listener for at most one of the host's IP
        * addresses.
        * If the port in the address parameter is empty or "0", as in
        * "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        * The LocalAddr method of PacketConn can be used to discover the
        * chosen port.
        * 
        * See func Dial for a description of the network and address
        * parameters.
        * 
        * ListenPacket uses context.Background internally; to specify the context, use
        * ListenConfig.ListenPacket.
    **/
    static public inline function listenPacket(_network:String, _address:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_listenpacket.listenPacket(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * FileConn returns a copy of the network connection corresponding to
        * the open file f.
        * It is the caller's responsibility to close f when finished.
        * Closing c does not affect f, and closing f does not affect c.
    **/
    static public inline function fileConn(_f:stdgo._internal.os.Os_file.File):stdgo.Tuple<Conn, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.net.Net_fileconn.fileConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * FileListener returns a copy of the network listener corresponding
        * to the open file f.
        * It is the caller's responsibility to close ln when finished.
        * Closing ln does not affect f, and closing f does not affect ln.
    **/
    static public inline function fileListener(_f:stdgo._internal.os.Os_file.File):stdgo.Tuple<Listener, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.net.Net_filelistener.fileListener(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * FilePacketConn returns a copy of the packet network connection
        * corresponding to the open file f.
        * It is the caller's responsibility to close f when finished.
        * Closing c does not affect f, and closing f does not affect c.
    **/
    static public inline function filePacketConn(_f:stdgo._internal.os.Os_file.File):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.net.Net_filepacketconn.filePacketConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Interfaces returns a list of the system's network interfaces.
    **/
    static public inline function interfaces():stdgo.Tuple<Array<Interface>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaces.interfaces();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * InterfaceAddrs returns a list of the system's unicast interface
        * addresses.
        * 
        * The returned list does not identify the associated interface; use
        * Interfaces and Interface.Addrs for more detail.
    **/
    static public inline function interfaceAddrs():stdgo.Tuple<Array<Addr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaceaddrs.interfaceAddrs();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * InterfaceByIndex returns the interface specified by index.
        * 
        * On Solaris, it returns one of the logical network interfaces
        * sharing the logical data link; for more precision use
        * InterfaceByName.
    **/
    static public inline function interfaceByIndex(_index:StdTypes.Int):stdgo.Tuple<Interface, stdgo.Error> {
        final _index = (_index : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.Net_interfacebyindex.interfaceByIndex(_index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * InterfaceByName returns the interface specified by name.
    **/
    static public inline function interfaceByName(_name:String):stdgo.Tuple<Interface, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_interfacebyname.interfaceByName(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * IPv4 returns the IP address (in 16-byte form) of the
        * IPv4 address a.b.c.d.
    **/
    static public inline function iPv4(_a:std.UInt, _b:std.UInt, _c:std.UInt, _d:std.UInt):IP {
        final _a = (_a : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        final _c = (_c : stdgo.GoUInt8);
        final _d = (_d : stdgo.GoUInt8);
        return stdgo._internal.net.Net_ipv4.iPv4(_a, _b, _c, _d);
    }
    /**
        * IPv4Mask returns the IP mask (in 4-byte form) of the
        * IPv4 mask a.b.c.d.
    **/
    static public inline function iPv4Mask(_a:std.UInt, _b:std.UInt, _c:std.UInt, _d:std.UInt):IPMask {
        final _a = (_a : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        final _c = (_c : stdgo.GoUInt8);
        final _d = (_d : stdgo.GoUInt8);
        return stdgo._internal.net.Net_ipv4mask.iPv4Mask(_a, _b, _c, _d);
    }
    /**
        * CIDRMask returns an IPMask consisting of 'ones' 1 bits
        * followed by 0s up to a total length of 'bits' bits.
        * For a mask of this form, CIDRMask is the inverse of IPMask.Size.
    **/
    static public inline function cIDRMask(_ones:StdTypes.Int, _bits:StdTypes.Int):IPMask {
        final _ones = (_ones : stdgo.GoInt);
        final _bits = (_bits : stdgo.GoInt);
        return stdgo._internal.net.Net_cidrmask.cIDRMask(_ones, _bits);
    }
    /**
        * ParseIP parses s as an IP address, returning the result.
        * The string s can be in IPv4 dotted decimal ("192.0.2.1"), IPv6
        * ("2001:db8::68"), or IPv4-mapped IPv6 ("::ffff:192.0.2.1") form.
        * If s is not a valid textual representation of an IP address,
        * ParseIP returns nil.
    **/
    static public inline function parseIP(_s:String):IP {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.Net_parseip.parseIP(_s);
    }
    /**
        * ParseCIDR parses s as a CIDR notation IP address and prefix length,
        * like "192.0.2.0/24" or "2001:db8::/32", as defined in
        * RFC 4632 and RFC 4291.
        * 
        * It returns the IP address and the network implied by the IP and
        * prefix length.
        * For example, ParseCIDR("192.0.2.1/24") returns the IP address
        * 192.0.2.1 and the network 192.0.2.0/24.
    **/
    static public inline function parseCIDR(_s:String):stdgo.Tuple.Tuple3<IP, IPNet, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_parsecidr.parseCIDR(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * ResolveIPAddr returns an address of IP end point.
        * 
        * The network must be an IP network name.
        * 
        * If the host in the address parameter is not a literal IP address,
        * ResolveIPAddr resolves the address to an address of IP end point.
        * Otherwise, it parses the address as a literal IP address.
        * The address parameter can use a host name, but this is not
        * recommended, because it will return at most one of the host name's
        * IP addresses.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveIPAddr(_network:String, _address:String):stdgo.Tuple<IPAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveipaddr.resolveIPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DialIP acts like Dial for IP networks.
        * 
        * The network must be an IP network name; see func Dial for details.
        * 
        * If laddr is nil, a local address is automatically chosen.
        * If the IP field of raddr is nil or an unspecified IP address, the
        * local system is assumed.
    **/
    static public inline function dialIP(_network:String, _laddr:IPAddr, _raddr:IPAddr):stdgo.Tuple<IPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialip.dialIP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenIP acts like ListenPacket for IP networks.
        * 
        * The network must be an IP network name; see func Dial for details.
        * 
        * If the IP field of laddr is nil or an unspecified IP address,
        * ListenIP listens on all available IP addresses of the local system
        * except multicast IP addresses.
    **/
    static public inline function listenIP(_network:String, _laddr:IPAddr):stdgo.Tuple<IPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenip.listenIP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * SplitHostPort splits a network address of the form "host:port",
        * "host%zone:port", "[host]:port" or "[host%zone]:port" into host or
        * host%zone and port.
        * 
        * A literal IPv6 address in hostport must be enclosed in square
        * brackets, as in "[::1]:80", "[::1%lo0]:80".
        * 
        * See func Dial for a description of the hostport parameter, and host
        * and port results.
    **/
    static public inline function splitHostPort(_hostport:String):stdgo.Tuple.Tuple3<String, String, stdgo.Error> {
        final _hostport = (_hostport : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_splithostport.splitHostPort(_hostport);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * JoinHostPort combines host and port into a network address of the
        * form "host:port". If host contains a colon, as found in literal
        * IPv6 addresses, then JoinHostPort returns "[host]:port".
        * 
        * See func Dial for a description of the host and port parameters.
    **/
    static public inline function joinHostPort(_host:String, _port:String):String {
        final _host = (_host : stdgo.GoString);
        final _port = (_port : stdgo.GoString);
        return stdgo._internal.net.Net_joinhostport.joinHostPort(_host, _port);
    }
    /**
        * LookupHost looks up the given host using the local resolver.
        * It returns a slice of that host's addresses.
        * 
        * LookupHost uses context.Background internally; to specify the context, use
        * Resolver.LookupHost.
    **/
    static public inline function lookupHost(_host:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookuphost.lookupHost(_host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * LookupIP looks up host using the local resolver.
        * It returns a slice of that host's IPv4 and IPv6 addresses.
    **/
    static public inline function lookupIP(_host:String):stdgo.Tuple<Array<IP>, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupip.lookupIP(_host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * LookupPort looks up the port for the given network and service.
        * 
        * LookupPort uses context.Background internally; to specify the context, use
        * Resolver.LookupPort.
    **/
    static public inline function lookupPort(_network:String, _service:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _service = (_service : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupport.lookupPort(_network, _service);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * LookupCNAME returns the canonical name for the given host.
        * Callers that do not care about the canonical name can call
        * LookupHost or LookupIP directly; both take care of resolving
        * the canonical name as part of the lookup.
        * 
        * A canonical name is the final name after following zero
        * or more CNAME records.
        * LookupCNAME does not return an error if host does not
        * contain DNS "CNAME" records, as long as host resolves to
        * address records.
        * 
        * The returned canonical name is validated to be a properly
        * formatted presentation-format domain name.
        * 
        * LookupCNAME uses context.Background internally; to specify the context, use
        * Resolver.LookupCNAME.
    **/
    static public inline function lookupCNAME(_host:String):stdgo.Tuple<String, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupcname.lookupCNAME(_host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * LookupSRV tries to resolve an SRV query of the given service,
        * protocol, and domain name. The proto is "tcp" or "udp".
        * The returned records are sorted by priority and randomized
        * by weight within a priority.
        * 
        * LookupSRV constructs the DNS name to look up following RFC 2782.
        * That is, it looks up _service._proto.name. To accommodate services
        * publishing SRV records under non-standard names, if both service
        * and proto are empty strings, LookupSRV looks up name directly.
        * 
        * The returned service names are validated to be properly
        * formatted presentation-format domain names. If the response contains
        * invalid names, those records are filtered out and an error
        * will be returned alongside the remaining results, if any.
    **/
    static public inline function lookupSRV(_service:String, _proto:String, _name:String):stdgo.Tuple.Tuple3<String, Array<SRV>, stdgo.Error> {
        final _service = (_service : stdgo.GoString);
        final _proto = (_proto : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupsrv.lookupSRV(_service, _proto, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        * LookupMX returns the DNS MX records for the given domain name sorted by preference.
        * 
        * The returned mail server names are validated to be properly
        * formatted presentation-format domain names. If the response contains
        * invalid names, those records are filtered out and an error
        * will be returned alongside the remaining results, if any.
        * 
        * LookupMX uses context.Background internally; to specify the context, use
        * Resolver.LookupMX.
    **/
    static public inline function lookupMX(_name:String):stdgo.Tuple<Array<MX>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupmx.lookupMX(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * LookupNS returns the DNS NS records for the given domain name.
        * 
        * The returned name server names are validated to be properly
        * formatted presentation-format domain names. If the response contains
        * invalid names, those records are filtered out and an error
        * will be returned alongside the remaining results, if any.
        * 
        * LookupNS uses context.Background internally; to specify the context, use
        * Resolver.LookupNS.
    **/
    static public inline function lookupNS(_name:String):stdgo.Tuple<Array<NS>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupns.lookupNS(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * LookupTXT returns the DNS TXT records for the given domain name.
        * 
        * LookupTXT uses context.Background internally; to specify the context, use
        * Resolver.LookupTXT.
    **/
    static public inline function lookupTXT(_name:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookuptxt.lookupTXT(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * LookupAddr performs a reverse lookup for the given address, returning a list
        * of names mapping to that address.
        * 
        * The returned names are validated to be properly formatted presentation-format
        * domain names. If the response contains invalid names, those records are filtered
        * out and an error will be returned alongside the remaining results, if any.
        * 
        * When using the host C library resolver, at most one result will be
        * returned. To bypass the host resolver, use a custom Resolver.
        * 
        * LookupAddr uses context.Background internally; to specify the context, use
        * Resolver.LookupAddr.
    **/
    static public inline function lookupAddr(_addr:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupaddr.lookupAddr(_addr);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ParseMAC parses s as an IEEE 802 MAC-48, EUI-48, EUI-64, or a 20-octet
        * IP over InfiniBand link-layer address using one of the following formats:
        * 
        * 	00:00:5e:00:53:01
        * 	02:00:5e:10:00:00:00:01
        * 	00:00:00:00:fe:80:00:00:00:00:00:00:02:00:5e:10:00:00:00:01
        * 	00-00-5e-00-53-01
        * 	02-00-5e-10-00-00-00-01
        * 	00-00-00-00-fe-80-00-00-00-00-00-00-02-00-5e-10-00-00-00-01
        * 	0000.5e00.5301
        * 	0200.5e10.0000.0001
        * 	0000.0000.fe80.0000.0000.0000.0200.5e10.0000.0001
    **/
    static public inline function parseMAC(_s:String):stdgo.Tuple<HardwareAddr, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_parsemac.parseMAC(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Pipe creates a synchronous, in-memory, full duplex
        * network connection; both ends implement the Conn interface.
        * Reads on one end are matched with writes on the other,
        * copying data directly between the two; there is no internal
        * buffering.
    **/
    static public inline function pipe():stdgo.Tuple<Conn, Conn> {
        return {
            final obj = stdgo._internal.net.Net_pipe.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ResolveTCPAddr returns an address of TCP end point.
        * 
        * The network must be a TCP network name.
        * 
        * If the host in the address parameter is not a literal IP address or
        * the port is not a literal port number, ResolveTCPAddr resolves the
        * address to an address of TCP end point.
        * Otherwise, it parses the address as a pair of literal IP address
        * and port number.
        * The address parameter can use a host name, but this is not
        * recommended, because it will return at most one of the host name's
        * IP addresses.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveTCPAddr(_network:String, _address:String):stdgo.Tuple<TCPAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolvetcpaddr.resolveTCPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * TCPAddrFromAddrPort returns addr as a TCPAddr. If addr.IsValid() is false,
        * then the returned TCPAddr will contain a nil IP field, indicating an
        * address family-agnostic unspecified address.
    **/
    static public inline function tCPAddrFromAddrPort(_addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):TCPAddr {
        return stdgo._internal.net.Net_tcpaddrfromaddrport.tCPAddrFromAddrPort(_addr);
    }
    /**
        * DialTCP acts like Dial for TCP networks.
        * 
        * The network must be a TCP network name; see func Dial for details.
        * 
        * If laddr is nil, a local address is automatically chosen.
        * If the IP field of raddr is nil or an unspecified IP address, the
        * local system is assumed.
    **/
    static public inline function dialTCP(_network:String, _laddr:TCPAddr, _raddr:TCPAddr):stdgo.Tuple<TCPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialtcp.dialTCP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenTCP acts like Listen for TCP networks.
        * 
        * The network must be a TCP network name; see func Dial for details.
        * 
        * If the IP field of laddr is nil or an unspecified IP address,
        * ListenTCP listens on all available unicast and anycast IP addresses
        * of the local system.
        * If the Port field of laddr is 0, a port number is automatically
        * chosen.
    **/
    static public inline function listenTCP(_network:String, _laddr:TCPAddr):stdgo.Tuple<TCPListener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listentcp.listenTCP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ResolveUDPAddr returns an address of UDP end point.
        * 
        * The network must be a UDP network name.
        * 
        * If the host in the address parameter is not a literal IP address or
        * the port is not a literal port number, ResolveUDPAddr resolves the
        * address to an address of UDP end point.
        * Otherwise, it parses the address as a pair of literal IP address
        * and port number.
        * The address parameter can use a host name, but this is not
        * recommended, because it will return at most one of the host name's
        * IP addresses.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveUDPAddr(_network:String, _address:String):stdgo.Tuple<UDPAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveudpaddr.resolveUDPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * UDPAddrFromAddrPort returns addr as a UDPAddr. If addr.IsValid() is false,
        * then the returned UDPAddr will contain a nil IP field, indicating an
        * address family-agnostic unspecified address.
    **/
    static public inline function uDPAddrFromAddrPort(_addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):UDPAddr {
        return stdgo._internal.net.Net_udpaddrfromaddrport.uDPAddrFromAddrPort(_addr);
    }
    /**
        * DialUDP acts like Dial for UDP networks.
        * 
        * The network must be a UDP network name; see func Dial for details.
        * 
        * If laddr is nil, a local address is automatically chosen.
        * If the IP field of raddr is nil or an unspecified IP address, the
        * local system is assumed.
    **/
    static public inline function dialUDP(_network:String, _laddr:UDPAddr, _raddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialudp.dialUDP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenUDP acts like ListenPacket for UDP networks.
        * 
        * The network must be a UDP network name; see func Dial for details.
        * 
        * If the IP field of laddr is nil or an unspecified IP address,
        * ListenUDP listens on all available IP addresses of the local system
        * except multicast IP addresses.
        * If the Port field of laddr is 0, a port number is automatically
        * chosen.
    **/
    static public inline function listenUDP(_network:String, _laddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenudp.listenUDP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenMulticastUDP acts like ListenPacket for UDP networks but
        * takes a group address on a specific network interface.
        * 
        * The network must be a UDP network name; see func Dial for details.
        * 
        * ListenMulticastUDP listens on all available IP addresses of the
        * local system including the group, multicast IP address.
        * If ifi is nil, ListenMulticastUDP uses the system-assigned
        * multicast interface, although this is not recommended because the
        * assignment depends on platforms and sometimes it might require
        * routing configuration.
        * If the Port field of gaddr is 0, a port number is automatically
        * chosen.
        * 
        * ListenMulticastUDP is just for convenience of simple, small
        * applications. There are golang.org/x/net/ipv4 and
        * golang.org/x/net/ipv6 packages for general purpose uses.
        * 
        * Note that ListenMulticastUDP will set the IP_MULTICAST_LOOP socket option
        * to 0 under IPPROTO_IP, to disable loopback of multicast packets.
    **/
    static public inline function listenMulticastUDP(_network:String, _ifi:Interface, _gaddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _ifi = (_ifi : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>);
        final _gaddr = (_gaddr : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenmulticastudp.listenMulticastUDP(_network, _ifi, _gaddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ResolveUnixAddr returns an address of Unix domain socket end point.
        * 
        * The network must be a Unix network name.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveUnixAddr(_network:String, _address:String):stdgo.Tuple<UnixAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveunixaddr.resolveUnixAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DialUnix acts like Dial for Unix networks.
        * 
        * The network must be a Unix network name; see func Dial for details.
        * 
        * If laddr is non-nil, it is used as the local address for the
        * connection.
    **/
    static public inline function dialUnix(_network:String, _laddr:UnixAddr, _raddr:UnixAddr):stdgo.Tuple<UnixConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialunix.dialUnix(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenUnix acts like Listen for Unix networks.
        * 
        * The network must be "unix" or "unixpacket".
    **/
    static public inline function listenUnix(_network:String, _laddr:UnixAddr):stdgo.Tuple<UnixListener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenunix.listenUnix(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ListenUnixgram acts like ListenPacket for Unix networks.
        * 
        * The network must be "unixgram".
    **/
    static public inline function listenUnixgram(_network:String, _laddr:UnixAddr):stdgo.Tuple<UnixConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenunixgram.listenUnixgram(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
