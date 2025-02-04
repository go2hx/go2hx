package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension) class Dialer {
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var deadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var localAddr : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var dualStack : Bool = false;
    public var fallbackDelay : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var keepAlive : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var resolver : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = (null : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
    public var cancel : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var control : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
    public var controlContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?deadline:stdgo._internal.time.Time_time.Time, ?localAddr:stdgo._internal.net.Net_addr.Addr, ?dualStack:Bool, ?fallbackDelay:stdgo._internal.time.Time_duration.Duration, ?keepAlive:stdgo._internal.time.Time_duration.Duration, ?resolver:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, ?cancel:stdgo.Chan<{ }>, ?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?controlContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error) {
        if (timeout != null) this.timeout = timeout;
        if (deadline != null) this.deadline = deadline;
        if (localAddr != null) this.localAddr = localAddr;
        if (dualStack != null) this.dualStack = dualStack;
        if (fallbackDelay != null) this.fallbackDelay = fallbackDelay;
        if (keepAlive != null) this.keepAlive = keepAlive;
        if (resolver != null) this.resolver = resolver;
        if (cancel != null) this.cancel = cancel;
        if (control != null) this.control = control;
        if (controlContext != null) this.controlContext = controlContext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dialer(timeout, deadline, localAddr, dualStack, fallbackDelay, keepAlive, resolver, cancel, control, controlContext);
    }
}
