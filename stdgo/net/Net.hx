package stdgo.net;
final flagUp : Flags = stdgo._internal.net.Net_flagUp.flagUp;
final flagBroadcast = stdgo._internal.net.Net_flagBroadcast.flagBroadcast;
final flagLoopback = stdgo._internal.net.Net_flagLoopback.flagLoopback;
final flagPointToPoint = stdgo._internal.net.Net_flagPointToPoint.flagPointToPoint;
final flagMulticast = stdgo._internal.net.Net_flagMulticast.flagMulticast;
final flagRunning = stdgo._internal.net.Net_flagRunning.flagRunning;
final iPv4len : haxe.UInt64 = stdgo._internal.net.Net_iPv4len.iPv4len;
final iPv6len : haxe.UInt64 = stdgo._internal.net.Net_iPv6len.iPv6len;
var iPv4bcast(get, set) : IP;
private function get_iPv4bcast():IP return stdgo._internal.net.Net_iPv4bcast.iPv4bcast;
private function set_iPv4bcast(v:IP):IP {
        stdgo._internal.net.Net_iPv4bcast.iPv4bcast = v;
        return v;
    }
var iPv4allsys(get, set) : IP;
private function get_iPv4allsys():IP return stdgo._internal.net.Net_iPv4allsys.iPv4allsys;
private function set_iPv4allsys(v:IP):IP {
        stdgo._internal.net.Net_iPv4allsys.iPv4allsys = v;
        return v;
    }
var iPv4allrouter(get, set) : IP;
private function get_iPv4allrouter():IP return stdgo._internal.net.Net_iPv4allrouter.iPv4allrouter;
private function set_iPv4allrouter(v:IP):IP {
        stdgo._internal.net.Net_iPv4allrouter.iPv4allrouter = v;
        return v;
    }
var iPv4zero(get, set) : IP;
private function get_iPv4zero():IP return stdgo._internal.net.Net_iPv4zero.iPv4zero;
private function set_iPv4zero(v:IP):IP {
        stdgo._internal.net.Net_iPv4zero.iPv4zero = v;
        return v;
    }
var iPv6zero(get, set) : IP;
private function get_iPv6zero():IP return stdgo._internal.net.Net_iPv6zero.iPv6zero;
private function set_iPv6zero(v:IP):IP {
        stdgo._internal.net.Net_iPv6zero.iPv6zero = v;
        return v;
    }
var iPv6unspecified(get, set) : IP;
private function get_iPv6unspecified():IP return stdgo._internal.net.Net_iPv6unspecified.iPv6unspecified;
private function set_iPv6unspecified(v:IP):IP {
        stdgo._internal.net.Net_iPv6unspecified.iPv6unspecified = v;
        return v;
    }
var iPv6loopback(get, set) : IP;
private function get_iPv6loopback():IP return stdgo._internal.net.Net_iPv6loopback.iPv6loopback;
private function set_iPv6loopback(v:IP):IP {
        stdgo._internal.net.Net_iPv6loopback.iPv6loopback = v;
        return v;
    }
var iPv6interfacelocalallnodes(get, set) : IP;
private function get_iPv6interfacelocalallnodes():IP return stdgo._internal.net.Net_iPv6interfacelocalallnodes.iPv6interfacelocalallnodes;
private function set_iPv6interfacelocalallnodes(v:IP):IP {
        stdgo._internal.net.Net_iPv6interfacelocalallnodes.iPv6interfacelocalallnodes = v;
        return v;
    }
var iPv6linklocalallnodes(get, set) : IP;
private function get_iPv6linklocalallnodes():IP return stdgo._internal.net.Net_iPv6linklocalallnodes.iPv6linklocalallnodes;
private function set_iPv6linklocalallnodes(v:IP):IP {
        stdgo._internal.net.Net_iPv6linklocalallnodes.iPv6linklocalallnodes = v;
        return v;
    }
var iPv6linklocalallrouters(get, set) : IP;
private function get_iPv6linklocalallrouters():IP return stdgo._internal.net.Net_iPv6linklocalallrouters.iPv6linklocalallrouters;
private function set_iPv6linklocalallrouters(v:IP):IP {
        stdgo._internal.net.Net_iPv6linklocalallrouters.iPv6linklocalallrouters = v;
        return v;
    }
var defaultResolver(get, set) : Resolver;
private function get_defaultResolver():Resolver return stdgo._internal.net.Net_defaultResolver.defaultResolver;
private function set_defaultResolver(v:Resolver):Resolver {
        stdgo._internal.net.Net_defaultResolver.defaultResolver = v;
        return v;
    }
var errWriteToConnected(get, set) : stdgo.Error;
private function get_errWriteToConnected():stdgo.Error return stdgo._internal.net.Net_errWriteToConnected.errWriteToConnected;
private function set_errWriteToConnected(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errWriteToConnected.errWriteToConnected = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.net.Net_errClosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errClosed.errClosed = v;
        return v;
    }
class Addr_static_extension {
    static public function string(t:stdgo._internal.net.Net_Addr.Addr):String {
        return stdgo._internal.net.Net_Addr_static_extension.Addr_static_extension.string(t);
    }
    static public function network(t:stdgo._internal.net.Net_Addr.Addr):String {
        return stdgo._internal.net.Net_Addr_static_extension.Addr_static_extension.network(t);
    }
}
typedef Addr = stdgo._internal.net.Net_Addr.Addr;
class Conn_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.Net_Conn.Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.setWriteDeadline(t, _t);
    }
    static public function setReadDeadline(t:stdgo._internal.net.Net_Conn.Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.setReadDeadline(t, _t);
    }
    static public function setDeadline(t:stdgo._internal.net.Net_Conn.Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.setDeadline(t, _t);
    }
    static public function remoteAddr(t:stdgo._internal.net.Net_Conn.Conn):Addr {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.remoteAddr(t);
    }
    static public function localAddr(t:stdgo._internal.net.Net_Conn.Conn):Addr {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.localAddr(t);
    }
    static public function close(t:stdgo._internal.net.Net_Conn.Conn):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.close(t);
    }
    static public function write(t:stdgo._internal.net.Net_Conn.Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.write(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(t:stdgo._internal.net.Net_Conn.Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.read(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Conn = stdgo._internal.net.Net_Conn.Conn;
class PacketConn_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.Net_PacketConn.PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.setWriteDeadline(t, _t);
    }
    static public function setReadDeadline(t:stdgo._internal.net.Net_PacketConn.PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.setReadDeadline(t, _t);
    }
    static public function setDeadline(t:stdgo._internal.net.Net_PacketConn.PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.setDeadline(t, _t);
    }
    static public function localAddr(t:stdgo._internal.net.Net_PacketConn.PacketConn):Addr {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.localAddr(t);
    }
    static public function close(t:stdgo._internal.net.Net_PacketConn.PacketConn):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.close(t);
    }
    static public function writeTo(t:stdgo._internal.net.Net_PacketConn.PacketConn, _p:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.writeTo(t, _p, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(t:stdgo._internal.net.Net_PacketConn.PacketConn, _p:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.readFrom(t, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef PacketConn = stdgo._internal.net.Net_PacketConn.PacketConn;
class Listener_static_extension {
    static public function addr(t:stdgo._internal.net.Net_Listener.Listener):Addr {
        return stdgo._internal.net.Net_Listener_static_extension.Listener_static_extension.addr(t);
    }
    static public function close(t:stdgo._internal.net.Net_Listener.Listener):stdgo.Error {
        return stdgo._internal.net.Net_Listener_static_extension.Listener_static_extension.close(t);
    }
    static public function accept(t:stdgo._internal.net.Net_Listener.Listener):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Listener_static_extension.Listener_static_extension.accept(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Listener = stdgo._internal.net.Net_Listener.Listener;
class Error_static_extension {
    static public function temporary(t:stdgo._internal.net.Net_Error.Error):Bool {
        return stdgo._internal.net.Net_Error_static_extension.Error_static_extension.temporary(t);
    }
    static public function timeout(t:stdgo._internal.net.Net_Error.Error):Bool {
        return stdgo._internal.net.Net_Error_static_extension.Error_static_extension.timeout(t);
    }
}
typedef Error = stdgo._internal.net.Net_Error.Error;
@:structInit @:using(stdgo.net.Net.Dialer_static_extension) abstract Dialer(stdgo._internal.net.Net_Dialer.Dialer) from stdgo._internal.net.Net_Dialer.Dialer to stdgo._internal.net.Net_Dialer.Dialer {
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public var deadline(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_deadline():stdgo._internal.time.Time_Time.Time return this.deadline;
    function set_deadline(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
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
    public var fallbackDelay(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_fallbackDelay():stdgo._internal.time.Time_Duration.Duration return this.fallbackDelay;
    function set_fallbackDelay(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.fallbackDelay = v;
        return v;
    }
    public var keepAlive(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_keepAlive():stdgo._internal.time.Time_Duration.Duration return this.keepAlive;
    function set_keepAlive(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.keepAlive = v;
        return v;
    }
    public var resolver(get, set) : Resolver;
    function get_resolver():Resolver return this.resolver;
    function set_resolver(v:Resolver):Resolver {
        this.resolver = v;
        return v;
    }
    public var cancel(get, set) : stdgo.Chan<{ }>;
    function get_cancel():stdgo.Chan<{ }> return this.cancel;
    function set_cancel(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this.cancel = v;
        return v;
    }
    public var control(get, set) : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error;
    function get_control():(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error return (_0, _1, _2) -> this.control(_0, _1, _2);
    function set_control(v:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error):(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error {
        this.control = v;
        return v;
    }
    public var controlContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error;
    function get_controlContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error return (_0, _1, _2, _3) -> this.controlContext(_0, _1, _2, _3);
    function set_controlContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error {
        this.controlContext = v;
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?deadline:stdgo._internal.time.Time_Time.Time, ?localAddr:Addr, ?dualStack:Bool, ?fallbackDelay:stdgo._internal.time.Time_Duration.Duration, ?keepAlive:stdgo._internal.time.Time_Duration.Duration, ?resolver:Resolver, ?cancel:stdgo.Chan<{ }>, ?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error, ?controlContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error) this = new stdgo._internal.net.Net_Dialer.Dialer(timeout, deadline, localAddr, dualStack, fallbackDelay, keepAlive, resolver, cancel, control, controlContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.ListenConfig_static_extension) abstract ListenConfig(stdgo._internal.net.Net_ListenConfig.ListenConfig) from stdgo._internal.net.Net_ListenConfig.ListenConfig to stdgo._internal.net.Net_ListenConfig.ListenConfig {
    public var control(get, set) : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error;
    function get_control():(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error return (_0, _1, _2) -> this.control(_0, _1, _2);
    function set_control(v:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error):(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error {
        this.control = v;
        return v;
    }
    public var keepAlive(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_keepAlive():stdgo._internal.time.Time_Duration.Duration return this.keepAlive;
    function set_keepAlive(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.keepAlive = v;
        return v;
    }
    public function new(?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error, ?keepAlive:stdgo._internal.time.Time_Duration.Duration) this = new stdgo._internal.net.Net_ListenConfig.ListenConfig(control, keepAlive);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SRV(stdgo._internal.net.Net_SRV.SRV) from stdgo._internal.net.Net_SRV.SRV to stdgo._internal.net.Net_SRV.SRV {
    public var target(get, set) : String;
    function get_target():String return this.target;
    function set_target(v:String):String {
        this.target = v;
        return v;
    }
    public var port(get, set) : std.UInt;
    function get_port():std.UInt return this.port;
    function set_port(v:std.UInt):std.UInt {
        this.port = v;
        return v;
    }
    public var priority(get, set) : std.UInt;
    function get_priority():std.UInt return this.priority;
    function set_priority(v:std.UInt):std.UInt {
        this.priority = v;
        return v;
    }
    public var weight(get, set) : std.UInt;
    function get_weight():std.UInt return this.weight;
    function set_weight(v:std.UInt):std.UInt {
        this.weight = v;
        return v;
    }
    public function new(?target:String, ?port:std.UInt, ?priority:std.UInt, ?weight:std.UInt) this = new stdgo._internal.net.Net_SRV.SRV(target, port, priority, weight);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract MX(stdgo._internal.net.Net_MX.MX) from stdgo._internal.net.Net_MX.MX to stdgo._internal.net.Net_MX.MX {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = v;
        return v;
    }
    public var pref(get, set) : std.UInt;
    function get_pref():std.UInt return this.pref;
    function set_pref(v:std.UInt):std.UInt {
        this.pref = v;
        return v;
    }
    public function new(?host:String, ?pref:std.UInt) this = new stdgo._internal.net.Net_MX.MX(host, pref);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract NS(stdgo._internal.net.Net_NS.NS) from stdgo._internal.net.Net_NS.NS to stdgo._internal.net.Net_NS.NS {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = v;
        return v;
    }
    public function new(?host:String) this = new stdgo._internal.net.Net_NS.NS(host);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.Interface_static_extension) abstract Interface(stdgo._internal.net.Net_Interface.Interface) from stdgo._internal.net.Net_Interface.Interface to stdgo._internal.net.Net_Interface.Interface {
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = v;
        return v;
    }
    public var mTU(get, set) : StdTypes.Int;
    function get_mTU():StdTypes.Int return this.mTU;
    function set_mTU(v:StdTypes.Int):StdTypes.Int {
        this.mTU = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
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
    public function new(?index:StdTypes.Int, ?mTU:StdTypes.Int, ?name:String, ?hardwareAddr:HardwareAddr, ?flags:Flags) this = new stdgo._internal.net.Net_Interface.Interface(index, mTU, name, hardwareAddr, flags);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.IPNet_static_extension) abstract IPNet(stdgo._internal.net.Net_IPNet.IPNet) from stdgo._internal.net.Net_IPNet.IPNet to stdgo._internal.net.Net_IPNet.IPNet {
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
    public function new(?iP:IP, ?mask:IPMask) this = new stdgo._internal.net.Net_IPNet.IPNet(iP, mask);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.IPAddr_static_extension) abstract IPAddr(stdgo._internal.net.Net_IPAddr.IPAddr) from stdgo._internal.net.Net_IPAddr.IPAddr to stdgo._internal.net.Net_IPAddr.IPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = v;
        return v;
    }
    public function new(?iP:IP, ?zone:String) this = new stdgo._internal.net.Net_IPAddr.IPAddr(iP, zone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.IPConn_static_extension) abstract IPConn(stdgo._internal.net.Net_IPConn.IPConn) from stdgo._internal.net.Net_IPConn.IPConn to stdgo._internal.net.Net_IPConn.IPConn {
    public function new() this = new stdgo._internal.net.Net_IPConn.IPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.Resolver_static_extension) abstract Resolver(stdgo._internal.net.Net_Resolver.Resolver) from stdgo._internal.net.Net_Resolver.Resolver to stdgo._internal.net.Net_Resolver.Resolver {
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
    public var dial(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dial():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dial(_0, _1, _2);
    function set_dial(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dial = v;
        return v;
    }
    public function new(?preferGo:Bool, ?strictErrors:Bool, ?dial:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }) this = new stdgo._internal.net.Net_Resolver.Resolver(preferGo, strictErrors, dial);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.OpError_static_extension) abstract OpError(stdgo._internal.net.Net_OpError.OpError) from stdgo._internal.net.Net_OpError.OpError to stdgo._internal.net.Net_OpError.OpError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = v;
        return v;
    }
    public var net(get, set) : String;
    function get_net():String return this.net;
    function set_net(v:String):String {
        this.net = v;
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
        this.err = v;
        return v;
    }
    public function new(?op:String, ?net:String, ?source:Addr, ?addr:Addr, ?err:stdgo.Error) this = new stdgo._internal.net.Net_OpError.OpError(op, net, source, addr, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.ParseError_static_extension) abstract ParseError(stdgo._internal.net.Net_ParseError.ParseError) from stdgo._internal.net.Net_ParseError.ParseError to stdgo._internal.net.Net_ParseError.ParseError {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = v;
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = v;
        return v;
    }
    public function new(?type:String, ?text:String) this = new stdgo._internal.net.Net_ParseError.ParseError(type, text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.AddrError_static_extension) abstract AddrError(stdgo._internal.net.Net_AddrError.AddrError) from stdgo._internal.net.Net_AddrError.AddrError to stdgo._internal.net.Net_AddrError.AddrError {
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = v;
        return v;
    }
    public var addr(get, set) : String;
    function get_addr():String return this.addr;
    function set_addr(v:String):String {
        this.addr = v;
        return v;
    }
    public function new(?err:String, ?addr:String) this = new stdgo._internal.net.Net_AddrError.AddrError(err, addr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.DNSConfigError_static_extension) abstract DNSConfigError(stdgo._internal.net.Net_DNSConfigError.DNSConfigError) from stdgo._internal.net.Net_DNSConfigError.DNSConfigError to stdgo._internal.net.Net_DNSConfigError.DNSConfigError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.net.Net_DNSConfigError.DNSConfigError(err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.DNSError_static_extension) abstract DNSError(stdgo._internal.net.Net_DNSError.DNSError) from stdgo._internal.net.Net_DNSError.DNSError to stdgo._internal.net.Net_DNSError.DNSError {
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var server(get, set) : String;
    function get_server():String return this.server;
    function set_server(v:String):String {
        this.server = v;
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
    public function new(?err:String, ?name:String, ?server:String, ?isTimeout:Bool, ?isTemporary:Bool, ?isNotFound:Bool) this = new stdgo._internal.net.Net_DNSError.DNSError(err, name, server, isTimeout, isTemporary, isNotFound);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.TCPAddr_static_extension) abstract TCPAddr(stdgo._internal.net.Net_TCPAddr.TCPAddr) from stdgo._internal.net.Net_TCPAddr.TCPAddr to stdgo._internal.net.Net_TCPAddr.TCPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = v;
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = v;
        return v;
    }
    public function new(?iP:IP, ?port:StdTypes.Int, ?zone:String) this = new stdgo._internal.net.Net_TCPAddr.TCPAddr(iP, port, zone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.TCPConn_static_extension) abstract TCPConn(stdgo._internal.net.Net_TCPConn.TCPConn) from stdgo._internal.net.Net_TCPConn.TCPConn to stdgo._internal.net.Net_TCPConn.TCPConn {
    public function new() this = new stdgo._internal.net.Net_TCPConn.TCPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.TCPListener_static_extension) abstract TCPListener(stdgo._internal.net.Net_TCPListener.TCPListener) from stdgo._internal.net.Net_TCPListener.TCPListener to stdgo._internal.net.Net_TCPListener.TCPListener {
    public function new() this = new stdgo._internal.net.Net_TCPListener.TCPListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UDPAddr_static_extension) abstract UDPAddr(stdgo._internal.net.Net_UDPAddr.UDPAddr) from stdgo._internal.net.Net_UDPAddr.UDPAddr to stdgo._internal.net.Net_UDPAddr.UDPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = v;
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = v;
        return v;
    }
    public function new(?iP:IP, ?port:StdTypes.Int, ?zone:String) this = new stdgo._internal.net.Net_UDPAddr.UDPAddr(iP, port, zone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UDPConn_static_extension) abstract UDPConn(stdgo._internal.net.Net_UDPConn.UDPConn) from stdgo._internal.net.Net_UDPConn.UDPConn to stdgo._internal.net.Net_UDPConn.UDPConn {
    public function new() this = new stdgo._internal.net.Net_UDPConn.UDPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UnixAddr_static_extension) abstract UnixAddr(stdgo._internal.net.Net_UnixAddr.UnixAddr) from stdgo._internal.net.Net_UnixAddr.UnixAddr to stdgo._internal.net.Net_UnixAddr.UnixAddr {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var net(get, set) : String;
    function get_net():String return this.net;
    function set_net(v:String):String {
        this.net = v;
        return v;
    }
    public function new(?name:String, ?net:String) this = new stdgo._internal.net.Net_UnixAddr.UnixAddr(name, net);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UnixConn_static_extension) abstract UnixConn(stdgo._internal.net.Net_UnixConn.UnixConn) from stdgo._internal.net.Net_UnixConn.UnixConn to stdgo._internal.net.Net_UnixConn.UnixConn {
    public function new() this = new stdgo._internal.net.Net_UnixConn.UnixConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.Net.UnixListener_static_extension) abstract UnixListener(stdgo._internal.net.Net_UnixListener.UnixListener) from stdgo._internal.net.Net_UnixListener.UnixListener to stdgo._internal.net.Net_UnixListener.UnixListener {
    public function new() this = new stdgo._internal.net.Net_UnixListener.UnixListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.net.Net_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.net.Net_T__struct_0.T__struct_0;
typedef Flags = stdgo._internal.net.Net_Flags.Flags;
typedef IP = stdgo._internal.net.Net_IP.IP;
typedef IPMask = stdgo._internal.net.Net_IPMask.IPMask;
typedef HardwareAddr = stdgo._internal.net.Net_HardwareAddr.HardwareAddr;
typedef UnknownNetworkError = stdgo._internal.net.Net_UnknownNetworkError.UnknownNetworkError;
typedef InvalidAddrError = stdgo._internal.net.Net_InvalidAddrError.InvalidAddrError;
typedef Buffers = stdgo._internal.net.Net_Buffers.Buffers;
typedef DialerPointer = stdgo._internal.net.Net_DialerPointer.DialerPointer;
class Dialer_static_extension {
    static public function dialContext(_d:Dialer, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.dialContext(_d, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dial(_d:Dialer, _network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.dial(_d, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setMultipathTCP(_d:Dialer, _use:Bool):Void {
        stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.setMultipathTCP(_d, _use);
    }
    static public function multipathTCP(_d:Dialer):Bool {
        return stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.multipathTCP(_d);
    }
}
typedef ListenConfigPointer = stdgo._internal.net.Net_ListenConfigPointer.ListenConfigPointer;
class ListenConfig_static_extension {
    static public function listenPacket(_lc:ListenConfig, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.listenPacket(_lc, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function listen(_lc:ListenConfig, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<Listener, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.listen(_lc, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setMultipathTCP(_lc:ListenConfig, _use:Bool):Void {
        stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.setMultipathTCP(_lc, _use);
    }
    static public function multipathTCP(_lc:ListenConfig):Bool {
        return stdgo._internal.net.Net_ListenConfig_static_extension.ListenConfig_static_extension.multipathTCP(_lc);
    }
}
typedef InterfacePointer = stdgo._internal.net.Net_InterfacePointer.InterfacePointer;
class Interface_static_extension {
    static public function multicastAddrs(_ifi:Interface):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Interface_static_extension.Interface_static_extension.multicastAddrs(_ifi);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function addrs(_ifi:Interface):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Interface_static_extension.Interface_static_extension.addrs(_ifi);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef IPNetPointer = stdgo._internal.net.Net_IPNetPointer.IPNetPointer;
class IPNet_static_extension {
    static public function string(_n:IPNet):String {
        return stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension.string(_n);
    }
    static public function network(_n:IPNet):String {
        return stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension.network(_n);
    }
    static public function contains(_n:IPNet, _ip:IP):Bool {
        return stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension.contains(_n, _ip);
    }
}
typedef IPAddrPointer = stdgo._internal.net.Net_IPAddrPointer.IPAddrPointer;
class IPAddr_static_extension {
    static public function string(_a:IPAddr):String {
        return stdgo._internal.net.Net_IPAddr_static_extension.IPAddr_static_extension.string(_a);
    }
    static public function network(_a:IPAddr):String {
        return stdgo._internal.net.Net_IPAddr_static_extension.IPAddr_static_extension.network(_a);
    }
}
typedef IPConnPointer = stdgo._internal.net.Net_IPConnPointer.IPConnPointer;
class IPConn_static_extension {
    static public function writeMsgIP(_c:IPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:IPAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.writeMsgIP(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:IPConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToIP(_c:IPConn, _b:Array<std.UInt>, _addr:IPAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.writeToIP(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgIP(_c:IPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, IPAddr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.readMsgIP(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFrom(_c:IPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromIP(_c:IPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, IPAddr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.readFromIP(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscallConn(_c:IPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_IPConn.IPConn):Bool {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_IPConn.IPConn):Addr {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_IPConn.IPConn):Addr {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.close(__self__);
    }
}
typedef ResolverPointer = stdgo._internal.net.Net_ResolverPointer.ResolverPointer;
class Resolver_static_extension {
    static public function lookupAddr(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _addr:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupAddr(_r, _ctx, _addr);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupTXT(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _name:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupTXT(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupNS(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _name:String):stdgo.Tuple<Array<NS>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupNS(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupMX(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _name:String):stdgo.Tuple<Array<MX>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupMX(_r, _ctx, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupSRV(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _service:String, _proto:String, _name:String):stdgo.Tuple.Tuple3<String, Array<SRV>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupSRV(_r, _ctx, _service, _proto, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function lookupCNAME(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _host:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupCNAME(_r, _ctx, _host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookupPort(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _service:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupPort(_r, _ctx, _network, _service);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookupNetIP(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _host:String):stdgo.Tuple<Array<Addr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupNetIP(_r, _ctx, _network, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupIP(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _host:String):stdgo.Tuple<Array<IP>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupIP(_r, _ctx, _network, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupIPAddr(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _host:String):stdgo.Tuple<Array<IPAddr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupIPAddr(_r, _ctx, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function lookupHost(_r:Resolver, _ctx:stdgo._internal.context.Context_Context.Context, _host:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Resolver_static_extension.Resolver_static_extension.lookupHost(_r, _ctx, _host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef OpErrorPointer = stdgo._internal.net.Net_OpErrorPointer.OpErrorPointer;
class OpError_static_extension {
    static public function temporary(_e:OpError):Bool {
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:OpError):Bool {
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.timeout(_e);
    }
    static public function error(_e:OpError):String {
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.error(_e);
    }
    static public function unwrap(_e:OpError):stdgo.Error {
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.unwrap(_e);
    }
}
typedef ParseErrorPointer = stdgo._internal.net.Net_ParseErrorPointer.ParseErrorPointer;
class ParseError_static_extension {
    static public function temporary(_e:ParseError):Bool {
        return stdgo._internal.net.Net_ParseError_static_extension.ParseError_static_extension.temporary(_e);
    }
    static public function timeout(_e:ParseError):Bool {
        return stdgo._internal.net.Net_ParseError_static_extension.ParseError_static_extension.timeout(_e);
    }
    static public function error(_e:ParseError):String {
        return stdgo._internal.net.Net_ParseError_static_extension.ParseError_static_extension.error(_e);
    }
}
typedef AddrErrorPointer = stdgo._internal.net.Net_AddrErrorPointer.AddrErrorPointer;
class AddrError_static_extension {
    static public function temporary(_e:AddrError):Bool {
        return stdgo._internal.net.Net_AddrError_static_extension.AddrError_static_extension.temporary(_e);
    }
    static public function timeout(_e:AddrError):Bool {
        return stdgo._internal.net.Net_AddrError_static_extension.AddrError_static_extension.timeout(_e);
    }
    static public function error(_e:AddrError):String {
        return stdgo._internal.net.Net_AddrError_static_extension.AddrError_static_extension.error(_e);
    }
}
typedef DNSConfigErrorPointer = stdgo._internal.net.Net_DNSConfigErrorPointer.DNSConfigErrorPointer;
class DNSConfigError_static_extension {
    static public function temporary(_e:DNSConfigError):Bool {
        return stdgo._internal.net.Net_DNSConfigError_static_extension.DNSConfigError_static_extension.temporary(_e);
    }
    static public function timeout(_e:DNSConfigError):Bool {
        return stdgo._internal.net.Net_DNSConfigError_static_extension.DNSConfigError_static_extension.timeout(_e);
    }
    static public function error(_e:DNSConfigError):String {
        return stdgo._internal.net.Net_DNSConfigError_static_extension.DNSConfigError_static_extension.error(_e);
    }
    static public function unwrap(_e:DNSConfigError):stdgo.Error {
        return stdgo._internal.net.Net_DNSConfigError_static_extension.DNSConfigError_static_extension.unwrap(_e);
    }
}
typedef DNSErrorPointer = stdgo._internal.net.Net_DNSErrorPointer.DNSErrorPointer;
class DNSError_static_extension {
    static public function temporary(_e:DNSError):Bool {
        return stdgo._internal.net.Net_DNSError_static_extension.DNSError_static_extension.temporary(_e);
    }
    static public function timeout(_e:DNSError):Bool {
        return stdgo._internal.net.Net_DNSError_static_extension.DNSError_static_extension.timeout(_e);
    }
    static public function error(_e:DNSError):String {
        return stdgo._internal.net.Net_DNSError_static_extension.DNSError_static_extension.error(_e);
    }
}
typedef TCPAddrPointer = stdgo._internal.net.Net_TCPAddrPointer.TCPAddrPointer;
class TCPAddr_static_extension {
    static public function string(_a:TCPAddr):String {
        return stdgo._internal.net.Net_TCPAddr_static_extension.TCPAddr_static_extension.string(_a);
    }
    static public function network(_a:TCPAddr):String {
        return stdgo._internal.net.Net_TCPAddr_static_extension.TCPAddr_static_extension.network(_a);
    }
    static public function addrPort(_a:TCPAddr):AddrPort {
        return stdgo._internal.net.Net_TCPAddr_static_extension.TCPAddr_static_extension.addrPort(_a);
    }
}
typedef TCPConnPointer = stdgo._internal.net.Net_TCPConnPointer.TCPConnPointer;
class TCPConn_static_extension {
    static public function multipathTCP(_c:TCPConn):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.multipathTCP(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setNoDelay(_c:TCPConn, _noDelay:Bool):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setNoDelay(_c, _noDelay);
    }
    static public function setKeepAlivePeriod(_c:TCPConn, _d:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setKeepAlivePeriod(_c, _d);
    }
    static public function setKeepAlive(_c:TCPConn, _keepalive:Bool):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setKeepAlive(_c, _keepalive);
    }
    static public function setLinger(_c:TCPConn, _sec:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setLinger(_c, _sec);
    }
    static public function closeWrite(_c:TCPConn):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.closeWrite(_c);
    }
    static public function closeRead(_c:TCPConn):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.closeRead(_c);
    }
    static public function readFrom(_c:TCPConn, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.readFrom(_c, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_c:TCPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):Bool {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):Addr {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):Addr {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.close(__self__);
    }
}
typedef TCPListenerPointer = stdgo._internal.net.Net_TCPListenerPointer.TCPListenerPointer;
class TCPListener_static_extension {
    static public function file(_l:TCPListener):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.file(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setDeadline(_l:TCPListener, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.setDeadline(_l, _t);
    }
    static public function addr(_l:TCPListener):Addr {
        return stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.addr(_l);
    }
    static public function close(_l:TCPListener):stdgo.Error {
        return stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.close(_l);
    }
    static public function accept(_l:TCPListener):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function acceptTCP(_l:TCPListener):stdgo.Tuple<TCPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.acceptTCP(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_l:TCPListener):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.syscallConn(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef UDPAddrPointer = stdgo._internal.net.Net_UDPAddrPointer.UDPAddrPointer;
class UDPAddr_static_extension {
    static public function string(_a:UDPAddr):String {
        return stdgo._internal.net.Net_UDPAddr_static_extension.UDPAddr_static_extension.string(_a);
    }
    static public function network(_a:UDPAddr):String {
        return stdgo._internal.net.Net_UDPAddr_static_extension.UDPAddr_static_extension.network(_a);
    }
    static public function addrPort(_a:UDPAddr):AddrPort {
        return stdgo._internal.net.Net_UDPAddr_static_extension.UDPAddr_static_extension.addrPort(_a);
    }
}
typedef UDPConnPointer = stdgo._internal.net.Net_UDPConnPointer.UDPConnPointer;
class UDPConn_static_extension {
    static public function writeMsgUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:AddrPort):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.writeMsgUDPAddrPort(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsgUDP(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:UDPAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.writeMsgUDP(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:UDPConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>, _addr:AddrPort):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.writeToUDPAddrPort(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToUDP(_c:UDPConn, _b:Array<std.UInt>, _addr:UDPAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.writeToUDP(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, AddrPort, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.readMsgUDPAddrPort(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readMsgUDP(_c:UDPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, UDPAddr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.readMsgUDP(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFromUDPAddrPort(_c:UDPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, AddrPort, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.readFromUDPAddrPort(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFrom(_c:UDPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromUDP(_c:UDPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, UDPAddr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.readFromUDP(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscallConn(_c:UDPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_UDPConn.UDPConn):Bool {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_UDPConn.UDPConn):Addr {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_UDPConn.UDPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_UDPConn.UDPConn):Addr {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_UDPConn.UDPConn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_UDPConn.UDPConn):stdgo.Error {
        return stdgo._internal.net.Net_UDPConn_static_extension.UDPConn_static_extension.close(__self__);
    }
}
typedef UnixAddrPointer = stdgo._internal.net.Net_UnixAddrPointer.UnixAddrPointer;
class UnixAddr_static_extension {
    static public function string(_a:UnixAddr):String {
        return stdgo._internal.net.Net_UnixAddr_static_extension.UnixAddr_static_extension.string(_a);
    }
    static public function network(_a:UnixAddr):String {
        return stdgo._internal.net.Net_UnixAddr_static_extension.UnixAddr_static_extension.network(_a);
    }
}
typedef UnixConnPointer = stdgo._internal.net.Net_UnixConnPointer.UnixConnPointer;
class UnixConn_static_extension {
    static public function writeMsgUnix(_c:UnixConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:UnixAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.writeMsgUnix(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:UnixConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToUnix(_c:UnixConn, _b:Array<std.UInt>, _addr:UnixAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.writeToUnix(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgUnix(_c:UnixConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, UnixAddr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.readMsgUnix(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFrom(_c:UnixConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromUnix(_c:UnixConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, UnixAddr, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.readFromUnix(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function closeWrite(_c:UnixConn):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.closeWrite(_c);
    }
    static public function closeRead(_c:UnixConn):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.closeRead(_c);
    }
    static public function syscallConn(_c:UnixConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_UnixConn.UnixConn):Bool {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:StdTypes.Int):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_UnixConn.UnixConn):Addr {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_UnixConn.UnixConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_UnixConn.UnixConn):Addr {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_UnixConn.UnixConn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_UnixConn.UnixConn):stdgo.Error {
        return stdgo._internal.net.Net_UnixConn_static_extension.UnixConn_static_extension.close(__self__);
    }
}
typedef UnixListenerPointer = stdgo._internal.net.Net_UnixListenerPointer.UnixListenerPointer;
class UnixListener_static_extension {
    static public function setUnlinkOnClose(_l:UnixListener, _unlink:Bool):Void {
        stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.setUnlinkOnClose(_l, _unlink);
    }
    static public function file(_l:UnixListener):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.file(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setDeadline(_l:UnixListener, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.setDeadline(_l, _t);
    }
    static public function addr(_l:UnixListener):Addr {
        return stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.addr(_l);
    }
    static public function close(_l:UnixListener):stdgo.Error {
        return stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.close(_l);
    }
    static public function accept(_l:UnixListener):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function acceptUnix(_l:UnixListener):stdgo.Tuple<UnixConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.acceptUnix(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_l:UnixListener):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.syscallConn(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FlagsPointer = stdgo._internal.net.Net_FlagsPointer.FlagsPointer;
class Flags_static_extension {
    static public function string(_f:Flags):String {
        return stdgo._internal.net.Net_Flags_static_extension.Flags_static_extension.string(_f);
    }
}
typedef IPPointer = stdgo._internal.net.Net_IPPointer.IPPointer;
class IP_static_extension {
    static public function equal(_ip:IP, _x:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.equal(_ip, _x);
    }
    static public function unmarshalText(_ip:IP, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.unmarshalText(_ip, _text);
    }
    static public function marshalText(_ip:IP):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_IP_static_extension.IP_static_extension.marshalText(_ip);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_ip:IP):String {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.string(_ip);
    }
    static public function mask(_ip:IP, _mask:IPMask):IP {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.mask(_ip, _mask);
    }
    static public function defaultMask(_ip:IP):IPMask {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.defaultMask(_ip);
    }
    static public function to16(_ip:IP):IP {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.to16(_ip);
    }
    static public function to4(_ip:IP):IP {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.to4(_ip);
    }
    static public function isGlobalUnicast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isGlobalUnicast(_ip);
    }
    static public function isLinkLocalUnicast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isLinkLocalUnicast(_ip);
    }
    static public function isLinkLocalMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isLinkLocalMulticast(_ip);
    }
    static public function isInterfaceLocalMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isInterfaceLocalMulticast(_ip);
    }
    static public function isMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isMulticast(_ip);
    }
    static public function isPrivate(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isPrivate(_ip);
    }
    static public function isLoopback(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isLoopback(_ip);
    }
    static public function isUnspecified(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isUnspecified(_ip);
    }
}
typedef IPMaskPointer = stdgo._internal.net.Net_IPMaskPointer.IPMaskPointer;
class IPMask_static_extension {
    static public function string(_m:IPMask):String {
        return stdgo._internal.net.Net_IPMask_static_extension.IPMask_static_extension.string(_m);
    }
    static public function size(_m:IPMask):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.net.Net_IPMask_static_extension.IPMask_static_extension.size(_m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef HardwareAddrPointer = stdgo._internal.net.Net_HardwareAddrPointer.HardwareAddrPointer;
class HardwareAddr_static_extension {
    static public function string(_a:HardwareAddr):String {
        return stdgo._internal.net.Net_HardwareAddr_static_extension.HardwareAddr_static_extension.string(_a);
    }
}
typedef UnknownNetworkErrorPointer = stdgo._internal.net.Net_UnknownNetworkErrorPointer.UnknownNetworkErrorPointer;
class UnknownNetworkError_static_extension {
    static public function temporary(_e:UnknownNetworkError):Bool {
        return stdgo._internal.net.Net_UnknownNetworkError_static_extension.UnknownNetworkError_static_extension.temporary(_e);
    }
    static public function timeout(_e:UnknownNetworkError):Bool {
        return stdgo._internal.net.Net_UnknownNetworkError_static_extension.UnknownNetworkError_static_extension.timeout(_e);
    }
    static public function error(_e:UnknownNetworkError):String {
        return stdgo._internal.net.Net_UnknownNetworkError_static_extension.UnknownNetworkError_static_extension.error(_e);
    }
}
typedef InvalidAddrErrorPointer = stdgo._internal.net.Net_InvalidAddrErrorPointer.InvalidAddrErrorPointer;
class InvalidAddrError_static_extension {
    static public function temporary(_e:InvalidAddrError):Bool {
        return stdgo._internal.net.Net_InvalidAddrError_static_extension.InvalidAddrError_static_extension.temporary(_e);
    }
    static public function timeout(_e:InvalidAddrError):Bool {
        return stdgo._internal.net.Net_InvalidAddrError_static_extension.InvalidAddrError_static_extension.timeout(_e);
    }
    static public function error(_e:InvalidAddrError):String {
        return stdgo._internal.net.Net_InvalidAddrError_static_extension.InvalidAddrError_static_extension.error(_e);
    }
}
typedef BuffersPointer = stdgo._internal.net.Net_BuffersPointer.BuffersPointer;
class Buffers_static_extension {
    static public function read(_v:Buffers, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_Buffers_static_extension.Buffers_static_extension.read(_v, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_v:Buffers, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_Buffers_static_extension.Buffers_static_extension.writeTo(_v, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    /|*
    Package net provides a portable interface for network I/O, including
    TCP/IP, UDP, domain name resolution, and Unix domain sockets.
    
    Although the package provides access to low-level networking
    primitives, most clients will need only the basic interface provided
    by the Dial, Listen, and Accept functions and the associated
    Conn and Listener interfaces. The crypto/tls package uses
    the same interfaces and similar Dial and Listen functions.
    
    The Dial function connects to a server:
    
    	conn, err := net.Dial("tcp", "golang.org:80")
    	if err != nil {
    		// handle error
    	}
    	fmt.Fprintf(conn, "GET / HTTP/1.0\r\n\r\n")
    	status, err := bufio.NewReader(conn).ReadString('\n')
    	// ...
    
    The Listen function creates servers:
    
    	ln, err := net.Listen("tcp", ":8080")
    	if err != nil {
    		// handle error
    	}
    	for {
    		conn, err := ln.Accept()
    		if err != nil {
    			// handle error
    		}
    		go handleConnection(conn)
    	}
    
    # Name Resolution
    
    The method for resolving domain names, whether indirectly with functions like Dial
    or directly with functions like LookupHost and LookupAddr, varies by operating system.
    
    On Unix systems, the resolver has two options for resolving names.
    It can use a pure Go resolver that sends DNS requests directly to the servers
    listed in /etc/resolv.conf, or it can use a cgo-based resolver that calls C
    library routines such as getaddrinfo and getnameinfo.
    
    By default the pure Go resolver is used, because a blocked DNS request consumes
    only a goroutine, while a blocked C call consumes an operating system thread.
    When cgo is available, the cgo-based resolver is used instead under a variety of
    conditions: on systems that do not let programs make direct DNS requests (OS X),
    when the LOCALDOMAIN environment variable is present (even if empty),
    when the RES_OPTIONS or HOSTALIASES environment variable is non-empty,
    when the ASR_CONFIG environment variable is non-empty (OpenBSD only),
    when /etc/resolv.conf or /etc/nsswitch.conf specify the use of features that the
    Go resolver does not implement, and when the name being looked up ends in .local
    or is an mDNS name.
    
    The resolver decision can be overridden by setting the netdns value of the
    GODEBUG environment variable (see package runtime) to go or cgo, as in:
    
    	export GODEBUG=netdns=go    # force pure Go resolver
    	export GODEBUG=netdns=cgo   # force native resolver (cgo, win32)
    
    The decision can also be forced while building the Go source tree
    by setting the netgo or netcgo build tag.
    
    A numeric netdns setting, as in GODEBUG=netdns=1, causes the resolver
    to print debugging information about its decisions.
    To force a particular resolver while also printing debugging information,
    join the two settings by a plus sign, as in GODEBUG=netdns=go+1.
    
    On macOS, if Go code that uses the net package is built with
    -buildmode=c-archive, linking the resulting archive into a C program
    requires passing -lresolv when linking the C code.
    
    On Plan 9, the resolver always accesses /net/cs and /net/dns.
    
    On Windows, in Go 1.18.x and earlier, the resolver always used C
    library functions, such as GetAddrInfo and DnsQuery.
    *|/
**/
class Net {
    /**
        Dial connects to the address on the named network.
        
        Known networks are "tcp", "tcp4" (IPv4-only), "tcp6" (IPv6-only),
        "udp", "udp4" (IPv4-only), "udp6" (IPv6-only), "ip", "ip4"
        (IPv4-only), "ip6" (IPv6-only), "unix", "unixgram" and
        "unixpacket".
        
        For TCP and UDP networks, the address has the form "host:port".
        The host must be a literal IP address, or a host name that can be
        resolved to IP addresses.
        The port must be a literal port number or a service name.
        If the host is a literal IPv6 address it must be enclosed in square
        brackets, as in "[2001:db8::1]:80" or "[fe80::1%zone]:80".
        The zone specifies the scope of the literal IPv6 address as defined
        in RFC 4007.
        The functions JoinHostPort and SplitHostPort manipulate a pair of
        host and port in this form.
        When using TCP, and the host resolves to multiple IP addresses,
        Dial will try each IP address in order until one succeeds.
        
        Examples:
        
        	Dial("tcp", "golang.org:http")
        	Dial("tcp", "192.0.2.1:http")
        	Dial("tcp", "198.51.100.1:80")
        	Dial("udp", "[2001:db8::1]:domain")
        	Dial("udp", "[fe80::1%lo0]:53")
        	Dial("tcp", ":80")
        
        For IP networks, the network must be "ip", "ip4" or "ip6" followed
        by a colon and a literal protocol number or a protocol name, and
        the address has the form "host". The host must be a literal IP
        address or a literal IPv6 address with zone.
        It depends on each operating system how the operating system
        behaves with a non-well known protocol number such as "0" or "255".
        
        Examples:
        
        	Dial("ip4:1", "192.0.2.1")
        	Dial("ip6:ipv6-icmp", "2001:db8::1")
        	Dial("ip6:58", "fe80::1%lo0")
        
        For TCP, UDP and IP networks, if the host is empty or a literal
        unspecified IP address, as in ":80", "0.0.0.0:80" or "[::]:80" for
        TCP and UDP, "", "0.0.0.0" or "::" for IP, the local system is
        assumed.
        
        For Unix networks, the address must be a file system path.
    **/
    static public function dial(_network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialTimeout acts like Dial but takes a timeout.
        
        The timeout includes name resolution, if required.
        When using TCP, and the host in the address parameter resolves to
        multiple IP addresses, the timeout is spread over each consecutive
        dial, such that each is given an appropriate fraction of the time
        to connect.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public function dialTimeout(_network:String, _address:String, _timeout:stdgo._internal.time.Time_Duration.Duration):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_dialTimeout.dialTimeout(_network, _address, _timeout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Listen announces on the local network address.
        
        The network must be "tcp", "tcp4", "tcp6", "unix" or "unixpacket".
        
        For TCP networks, if the host in the address parameter is empty or
        a literal unspecified IP address, Listen listens on all available
        unicast and anycast IP addresses of the local system.
        To only use IPv4, use network "tcp4".
        The address can use a host name, but this is not recommended,
        because it will create a listener for at most one of the host's IP
        addresses.
        If the port in the address parameter is empty or "0", as in
        "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        The Addr method of Listener can be used to discover the chosen
        port.
        
        See func Dial for a description of the network and address
        parameters.
        
        Listen uses context.Background internally; to specify the context, use
        ListenConfig.Listen.
    **/
    static public function listen(_network:String, _address:String):stdgo.Tuple<Listener, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listen.listen(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenPacket announces on the local network address.
        
        The network must be "udp", "udp4", "udp6", "unixgram", or an IP
        transport. The IP transports are "ip", "ip4", or "ip6" followed by
        a colon and a literal protocol number or a protocol name, as in
        "ip:1" or "ip:icmp".
        
        For UDP and IP networks, if the host in the address parameter is
        empty or a literal unspecified IP address, ListenPacket listens on
        all available IP addresses of the local system except multicast IP
        addresses.
        To only use IPv4, use network "udp4" or "ip4:proto".
        The address can use a host name, but this is not recommended,
        because it will create a listener for at most one of the host's IP
        addresses.
        If the port in the address parameter is empty or "0", as in
        "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        The LocalAddr method of PacketConn can be used to discover the
        chosen port.
        
        See func Dial for a description of the network and address
        parameters.
        
        ListenPacket uses context.Background internally; to specify the context, use
        ListenConfig.ListenPacket.
    **/
    static public function listenPacket(_network:String, _address:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenPacket.listenPacket(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FileConn returns a copy of the network connection corresponding to
        the open file f.
        It is the caller's responsibility to close f when finished.
        Closing c does not affect f, and closing f does not affect c.
    **/
    static public function fileConn(_f:stdgo._internal.os.Os_File.File):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_fileConn.fileConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FileListener returns a copy of the network listener corresponding
        to the open file f.
        It is the caller's responsibility to close ln when finished.
        Closing ln does not affect f, and closing f does not affect ln.
    **/
    static public function fileListener(_f:stdgo._internal.os.Os_File.File):stdgo.Tuple<Listener, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_fileListener.fileListener(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FilePacketConn returns a copy of the packet network connection
        corresponding to the open file f.
        It is the caller's responsibility to close f when finished.
        Closing c does not affect f, and closing f does not affect c.
    **/
    static public function filePacketConn(_f:stdgo._internal.os.Os_File.File):stdgo.Tuple<PacketConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_filePacketConn.filePacketConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Interfaces returns a list of the system's network interfaces.
    **/
    static public function interfaces():stdgo.Tuple<Array<Interface>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaces.interfaces();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        InterfaceAddrs returns a list of the system's unicast interface
        addresses.
        
        The returned list does not identify the associated interface; use
        Interfaces and Interface.Addrs for more detail.
    **/
    static public function interfaceAddrs():stdgo.Tuple<Array<Addr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaceAddrs.interfaceAddrs();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        InterfaceByIndex returns the interface specified by index.
        
        On Solaris, it returns one of the logical network interfaces
        sharing the logical data link; for more precision use
        InterfaceByName.
    **/
    static public function interfaceByIndex(_index:StdTypes.Int):stdgo.Tuple<Interface, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaceByIndex.interfaceByIndex(_index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        InterfaceByName returns the interface specified by name.
    **/
    static public function interfaceByName(_name:String):stdgo.Tuple<Interface, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaceByName.interfaceByName(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IPv4 returns the IP address (in 16-byte form) of the
        IPv4 address a.b.c.d.
    **/
    static public function iPv4(_a:std.UInt, _b:std.UInt, _c:std.UInt, _d:std.UInt):IP {
        return stdgo._internal.net.Net_iPv4.iPv4(_a, _b, _c, _d);
    }
    /**
        IPv4Mask returns the IP mask (in 4-byte form) of the
        IPv4 mask a.b.c.d.
    **/
    static public function iPv4Mask(_a:std.UInt, _b:std.UInt, _c:std.UInt, _d:std.UInt):IPMask {
        return stdgo._internal.net.Net_iPv4Mask.iPv4Mask(_a, _b, _c, _d);
    }
    /**
        CIDRMask returns an IPMask consisting of 'ones' 1 bits
        followed by 0s up to a total length of 'bits' bits.
        For a mask of this form, CIDRMask is the inverse of IPMask.Size.
    **/
    static public function cIDRMask(_ones:StdTypes.Int, _bits:StdTypes.Int):IPMask {
        return stdgo._internal.net.Net_cIDRMask.cIDRMask(_ones, _bits);
    }
    /**
        ParseIP parses s as an IP address, returning the result.
        The string s can be in IPv4 dotted decimal ("192.0.2.1"), IPv6
        ("2001:db8::68"), or IPv4-mapped IPv6 ("::ffff:192.0.2.1") form.
        If s is not a valid textual representation of an IP address,
        ParseIP returns nil.
    **/
    static public function parseIP(_s:String):IP {
        return stdgo._internal.net.Net_parseIP.parseIP(_s);
    }
    /**
        ParseCIDR parses s as a CIDR notation IP address and prefix length,
        like "192.0.2.0/24" or "2001:db8::/32", as defined in
        RFC 4632 and RFC 4291.
        
        It returns the IP address and the network implied by the IP and
        prefix length.
        For example, ParseCIDR("192.0.2.1/24") returns the IP address
        192.0.2.1 and the network 192.0.2.0/24.
    **/
    static public function parseCIDR(_s:String):stdgo.Tuple.Tuple3<IP, IPNet, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_parseCIDR.parseCIDR(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        ResolveIPAddr returns an address of IP end point.
        
        The network must be an IP network name.
        
        If the host in the address parameter is not a literal IP address,
        ResolveIPAddr resolves the address to an address of IP end point.
        Otherwise, it parses the address as a literal IP address.
        The address parameter can use a host name, but this is not
        recommended, because it will return at most one of the host name's
        IP addresses.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public function resolveIPAddr(_network:String, _address:String):stdgo.Tuple<IPAddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_resolveIPAddr.resolveIPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialIP acts like Dial for IP networks.
        
        The network must be an IP network name; see func Dial for details.
        
        If laddr is nil, a local address is automatically chosen.
        If the IP field of raddr is nil or an unspecified IP address, the
        local system is assumed.
    **/
    static public function dialIP(_network:String, _laddr:IPAddr, _raddr:IPAddr):stdgo.Tuple<IPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_dialIP.dialIP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenIP acts like ListenPacket for IP networks.
        
        The network must be an IP network name; see func Dial for details.
        
        If the IP field of laddr is nil or an unspecified IP address,
        ListenIP listens on all available IP addresses of the local system
        except multicast IP addresses.
    **/
    static public function listenIP(_network:String, _laddr:IPAddr):stdgo.Tuple<IPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenIP.listenIP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SplitHostPort splits a network address of the form "host:port",
        "host%zone:port", "[host]:port" or "[host%zone]:port" into host or
        host%zone and port.
        
        A literal IPv6 address in hostport must be enclosed in square
        brackets, as in "[::1]:80", "[::1%lo0]:80".
        
        See func Dial for a description of the hostport parameter, and host
        and port results.
    **/
    static public function splitHostPort(_hostport:String):stdgo.Tuple.Tuple3<String, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_splitHostPort.splitHostPort(_hostport);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        JoinHostPort combines host and port into a network address of the
        form "host:port". If host contains a colon, as found in literal
        IPv6 addresses, then JoinHostPort returns "[host]:port".
        
        See func Dial for a description of the host and port parameters.
    **/
    static public function joinHostPort(_host:String, _port:String):String {
        return stdgo._internal.net.Net_joinHostPort.joinHostPort(_host, _port);
    }
    /**
        LookupHost looks up the given host using the local resolver.
        It returns a slice of that host's addresses.
        
        LookupHost uses context.Background internally; to specify the context, use
        Resolver.LookupHost.
    **/
    static public function lookupHost(_host:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupHost.lookupHost(_host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupIP looks up host using the local resolver.
        It returns a slice of that host's IPv4 and IPv6 addresses.
    **/
    static public function lookupIP(_host:String):stdgo.Tuple<Array<IP>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupIP.lookupIP(_host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupPort looks up the port for the given network and service.
        
        LookupPort uses context.Background internally; to specify the context, use
        Resolver.LookupPort.
    **/
    static public function lookupPort(_network:String, _service:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupPort.lookupPort(_network, _service);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupCNAME returns the canonical name for the given host.
        Callers that do not care about the canonical name can call
        LookupHost or LookupIP directly; both take care of resolving
        the canonical name as part of the lookup.
        
        A canonical name is the final name after following zero
        or more CNAME records.
        LookupCNAME does not return an error if host does not
        contain DNS "CNAME" records, as long as host resolves to
        address records.
        
        The returned canonical name is validated to be a properly
        formatted presentation-format domain name.
        
        LookupCNAME uses context.Background internally; to specify the context, use
        Resolver.LookupCNAME.
    **/
    static public function lookupCNAME(_host:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupCNAME.lookupCNAME(_host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupSRV tries to resolve an SRV query of the given service,
        protocol, and domain name. The proto is "tcp" or "udp".
        The returned records are sorted by priority and randomized
        by weight within a priority.
        
        LookupSRV constructs the DNS name to look up following RFC 2782.
        That is, it looks up _service._proto.name. To accommodate services
        publishing SRV records under non-standard names, if both service
        and proto are empty strings, LookupSRV looks up name directly.
        
        The returned service names are validated to be properly
        formatted presentation-format domain names. If the response contains
        invalid names, those records are filtered out and an error
        will be returned alongside the remaining results, if any.
    **/
    static public function lookupSRV(_service:String, _proto:String, _name:String):stdgo.Tuple.Tuple3<String, Array<SRV>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupSRV.lookupSRV(_service, _proto, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        LookupMX returns the DNS MX records for the given domain name sorted by preference.
        
        The returned mail server names are validated to be properly
        formatted presentation-format domain names. If the response contains
        invalid names, those records are filtered out and an error
        will be returned alongside the remaining results, if any.
        
        LookupMX uses context.Background internally; to specify the context, use
        Resolver.LookupMX.
    **/
    static public function lookupMX(_name:String):stdgo.Tuple<Array<MX>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupMX.lookupMX(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupNS returns the DNS NS records for the given domain name.
        
        The returned name server names are validated to be properly
        formatted presentation-format domain names. If the response contains
        invalid names, those records are filtered out and an error
        will be returned alongside the remaining results, if any.
        
        LookupNS uses context.Background internally; to specify the context, use
        Resolver.LookupNS.
    **/
    static public function lookupNS(_name:String):stdgo.Tuple<Array<NS>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupNS.lookupNS(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupTXT returns the DNS TXT records for the given domain name.
        
        LookupTXT uses context.Background internally; to specify the context, use
        Resolver.LookupTXT.
    **/
    static public function lookupTXT(_name:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupTXT.lookupTXT(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupAddr performs a reverse lookup for the given address, returning a list
        of names mapping to that address.
        
        The returned names are validated to be properly formatted presentation-format
        domain names. If the response contains invalid names, those records are filtered
        out and an error will be returned alongside the remaining results, if any.
        
        When using the host C library resolver, at most one result will be
        returned. To bypass the host resolver, use a custom Resolver.
        
        LookupAddr uses context.Background internally; to specify the context, use
        Resolver.LookupAddr.
    **/
    static public function lookupAddr(_addr:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_lookupAddr.lookupAddr(_addr);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseMAC parses s as an IEEE 802 MAC-48, EUI-48, EUI-64, or a 20-octet
        IP over InfiniBand link-layer address using one of the following formats:
        
        	00:00:5e:00:53:01
        	02:00:5e:10:00:00:00:01
        	00:00:00:00:fe:80:00:00:00:00:00:00:02:00:5e:10:00:00:00:01
        	00-00-5e-00-53-01
        	02-00-5e-10-00-00-00-01
        	00-00-00-00-fe-80-00-00-00-00-00-00-02-00-5e-10-00-00-00-01
        	0000.5e00.5301
        	0200.5e10.0000.0001
        	0000.0000.fe80.0000.0000.0000.0200.5e10.0000.0001
    **/
    static public function parseMAC(_s:String):stdgo.Tuple<HardwareAddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_parseMAC.parseMAC(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Pipe creates a synchronous, in-memory, full duplex
        network connection; both ends implement the Conn interface.
        Reads on one end are matched with writes on the other,
        copying data directly between the two; there is no internal
        buffering.
    **/
    static public function pipe():stdgo.Tuple<Conn, Conn> {
        return {
            final obj = stdgo._internal.net.Net_pipe.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ResolveTCPAddr returns an address of TCP end point.
        
        The network must be a TCP network name.
        
        If the host in the address parameter is not a literal IP address or
        the port is not a literal port number, ResolveTCPAddr resolves the
        address to an address of TCP end point.
        Otherwise, it parses the address as a pair of literal IP address
        and port number.
        The address parameter can use a host name, but this is not
        recommended, because it will return at most one of the host name's
        IP addresses.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public function resolveTCPAddr(_network:String, _address:String):stdgo.Tuple<TCPAddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_resolveTCPAddr.resolveTCPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        TCPAddrFromAddrPort returns addr as a TCPAddr. If addr.IsValid() is false,
        then the returned TCPAddr will contain a nil IP field, indicating an
        address family-agnostic unspecified address.
    **/
    static public function tCPAddrFromAddrPort(_addr:AddrPort):TCPAddr {
        return stdgo._internal.net.Net_tCPAddrFromAddrPort.tCPAddrFromAddrPort(_addr);
    }
    /**
        DialTCP acts like Dial for TCP networks.
        
        The network must be a TCP network name; see func Dial for details.
        
        If laddr is nil, a local address is automatically chosen.
        If the IP field of raddr is nil or an unspecified IP address, the
        local system is assumed.
    **/
    static public function dialTCP(_network:String, _laddr:TCPAddr, _raddr:TCPAddr):stdgo.Tuple<TCPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_dialTCP.dialTCP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenTCP acts like Listen for TCP networks.
        
        The network must be a TCP network name; see func Dial for details.
        
        If the IP field of laddr is nil or an unspecified IP address,
        ListenTCP listens on all available unicast and anycast IP addresses
        of the local system.
        If the Port field of laddr is 0, a port number is automatically
        chosen.
    **/
    static public function listenTCP(_network:String, _laddr:TCPAddr):stdgo.Tuple<TCPListener, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenTCP.listenTCP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ResolveUDPAddr returns an address of UDP end point.
        
        The network must be a UDP network name.
        
        If the host in the address parameter is not a literal IP address or
        the port is not a literal port number, ResolveUDPAddr resolves the
        address to an address of UDP end point.
        Otherwise, it parses the address as a pair of literal IP address
        and port number.
        The address parameter can use a host name, but this is not
        recommended, because it will return at most one of the host name's
        IP addresses.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public function resolveUDPAddr(_network:String, _address:String):stdgo.Tuple<UDPAddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_resolveUDPAddr.resolveUDPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UDPAddrFromAddrPort returns addr as a UDPAddr. If addr.IsValid() is false,
        then the returned UDPAddr will contain a nil IP field, indicating an
        address family-agnostic unspecified address.
    **/
    static public function uDPAddrFromAddrPort(_addr:AddrPort):UDPAddr {
        return stdgo._internal.net.Net_uDPAddrFromAddrPort.uDPAddrFromAddrPort(_addr);
    }
    /**
        DialUDP acts like Dial for UDP networks.
        
        The network must be a UDP network name; see func Dial for details.
        
        If laddr is nil, a local address is automatically chosen.
        If the IP field of raddr is nil or an unspecified IP address, the
        local system is assumed.
    **/
    static public function dialUDP(_network:String, _laddr:UDPAddr, _raddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_dialUDP.dialUDP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenUDP acts like ListenPacket for UDP networks.
        
        The network must be a UDP network name; see func Dial for details.
        
        If the IP field of laddr is nil or an unspecified IP address,
        ListenUDP listens on all available IP addresses of the local system
        except multicast IP addresses.
        If the Port field of laddr is 0, a port number is automatically
        chosen.
    **/
    static public function listenUDP(_network:String, _laddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenUDP.listenUDP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenMulticastUDP acts like ListenPacket for UDP networks but
        takes a group address on a specific network interface.
        
        The network must be a UDP network name; see func Dial for details.
        
        ListenMulticastUDP listens on all available IP addresses of the
        local system including the group, multicast IP address.
        If ifi is nil, ListenMulticastUDP uses the system-assigned
        multicast interface, although this is not recommended because the
        assignment depends on platforms and sometimes it might require
        routing configuration.
        If the Port field of gaddr is 0, a port number is automatically
        chosen.
        
        ListenMulticastUDP is just for convenience of simple, small
        applications. There are golang.org/x/net/ipv4 and
        golang.org/x/net/ipv6 packages for general purpose uses.
        
        Note that ListenMulticastUDP will set the IP_MULTICAST_LOOP socket option
        to 0 under IPPROTO_IP, to disable loopback of multicast packets.
    **/
    static public function listenMulticastUDP(_network:String, _ifi:Interface, _gaddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenMulticastUDP.listenMulticastUDP(_network, _ifi, _gaddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ResolveUnixAddr returns an address of Unix domain socket end point.
        
        The network must be a Unix network name.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public function resolveUnixAddr(_network:String, _address:String):stdgo.Tuple<UnixAddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_resolveUnixAddr.resolveUnixAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialUnix acts like Dial for Unix networks.
        
        The network must be a Unix network name; see func Dial for details.
        
        If laddr is non-nil, it is used as the local address for the
        connection.
    **/
    static public function dialUnix(_network:String, _laddr:UnixAddr, _raddr:UnixAddr):stdgo.Tuple<UnixConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_dialUnix.dialUnix(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenUnix acts like Listen for Unix networks.
        
        The network must be "unix" or "unixpacket".
    **/
    static public function listenUnix(_network:String, _laddr:UnixAddr):stdgo.Tuple<UnixListener, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenUnix.listenUnix(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenUnixgram acts like ListenPacket for Unix networks.
        
        The network must be "unixgram".
    **/
    static public function listenUnixgram(_network:String, _laddr:UnixAddr):stdgo.Tuple<UnixConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_listenUnixgram.listenUnixgram(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
