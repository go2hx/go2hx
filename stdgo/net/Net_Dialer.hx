package stdgo.net;
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
        this.resolver = (v : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
        return v;
    }
    public var cancel(get, set) : stdgo.Chan<{ }>;
    function get_cancel():stdgo.Chan<{ }> return this.cancel;
    function set_cancel(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this.cancel = (v : stdgo.Chan<{ }>);
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
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?deadline:stdgo._internal.time.Time_Time.Time, ?localAddr:Addr, ?dualStack:Bool, ?fallbackDelay:stdgo._internal.time.Time_Duration.Duration, ?keepAlive:stdgo._internal.time.Time_Duration.Duration, ?resolver:Resolver, ?cancel:stdgo.Chan<{ }>, ?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error, ?controlContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error) this = new stdgo._internal.net.Net_Dialer.Dialer(timeout, deadline, localAddr, dualStack, fallbackDelay, keepAlive, (resolver : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>), (cancel : stdgo.Chan<{ }>), control, controlContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
