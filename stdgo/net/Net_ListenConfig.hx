package stdgo.net;
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
