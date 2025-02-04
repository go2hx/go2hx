package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension) class T_sysDialer {
    @:embedded
    public var dialer : stdgo._internal.net.Net_dialer.Dialer = ({} : stdgo._internal.net.Net_dialer.Dialer);
    public function new(?dialer:stdgo._internal.net.Net_dialer.Dialer) {
        if (dialer != null) this.dialer = dialer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var dial(get, never) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_dial():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:check32 this.dialer.dial;
    public var dialContext(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_dialContext():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:check32 this.dialer.dialContext;
    public var multipathTCP(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_multipathTCP():() -> Bool return @:check32 this.dialer.multipathTCP;
    public var setMultipathTCP(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMultipathTCP():Bool -> Void return @:check32 this.dialer.setMultipathTCP;
    public var _deadline(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.time.Time_time.Time) -> stdgo._internal.time.Time_time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get__deadline():(stdgo._internal.context.Context_context.Context, stdgo._internal.time.Time_time.Time) -> stdgo._internal.time.Time_time.Time return @:check32 this.dialer._deadline;
    public var _dualStack(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__dualStack():() -> Bool return @:check32 this.dialer._dualStack;
    public var _fallbackDelay(get, never) : () -> stdgo._internal.time.Time_duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__fallbackDelay():() -> stdgo._internal.time.Time_duration.Duration return @:check32 this.dialer._fallbackDelay;
    public var _resolver(get, never) : () -> stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>;
    @:embedded
    @:embeddededffieldsffun
    public function get__resolver():() -> stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return @:check32 this.dialer._resolver;
    public function __copy__() {
        return new T_sysDialer(dialer);
    }
}
