package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension) class ListenConfig {
    public var control : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
    public var keepAlive : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public function new(?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?keepAlive:stdgo._internal.time.Time_duration.Duration) {
        if (control != null) this.control = control;
        if (keepAlive != null) this.keepAlive = keepAlive;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ListenConfig(control, keepAlive);
    }
}
