package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension) class Dialer {
    public var timeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var deadline : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var localAddr : stdgo._internal.net.Net_Addr.Addr = (null : stdgo._internal.net.Net_Addr.Addr);
    public var dualStack : Bool = false;
    public var fallbackDelay : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var keepAlive : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var resolver : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver> = (null : stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>);
    public var cancel : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var control : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error = null;
    public var controlContext : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error = null;
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?deadline:stdgo._internal.time.Time_Time.Time, ?localAddr:stdgo._internal.net.Net_Addr.Addr, ?dualStack:Bool, ?fallbackDelay:stdgo._internal.time.Time_Duration.Duration, ?keepAlive:stdgo._internal.time.Time_Duration.Duration, ?resolver:stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>, ?cancel:stdgo.Chan<{ }>, ?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error, ?controlContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_RawConn.RawConn) -> stdgo.Error) {
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
