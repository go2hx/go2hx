package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension) class T_sysDialer {
    @:embedded
    public var dialer : stdgo._internal.net.Net_Dialer.Dialer = ({} : stdgo._internal.net.Net_Dialer.Dialer);
    public function new(?dialer:stdgo._internal.net.Net_Dialer.Dialer) {
        if (dialer != null) this.dialer = dialer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var dial(get, never) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_dial():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:check32 this.dialer.dial;
    public var dialContext(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_dialContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:check32 this.dialer.dialContext;
    public var multipathTCP(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_multipathTCP():() -> Bool return @:check32 this.dialer.multipathTCP;
    public var setMultipathTCP(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMultipathTCP():Bool -> Void return @:check32 this.dialer.setMultipathTCP;
    public var _deadline(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.time.Time_Time.Time) -> stdgo._internal.time.Time_Time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get__deadline():(stdgo._internal.context.Context_Context.Context, stdgo._internal.time.Time_Time.Time) -> stdgo._internal.time.Time_Time.Time return @:check32 this.dialer._deadline;
    public var _dualStack(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__dualStack():() -> Bool return @:check32 this.dialer._dualStack;
    public var _fallbackDelay(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__fallbackDelay():() -> stdgo._internal.time.Time_Duration.Duration return @:check32 this.dialer._fallbackDelay;
    public var _resolver(get, never) : () -> stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver>;
    @:embedded
    @:embeddededffieldsffun
    public function get__resolver():() -> stdgo.Ref<stdgo._internal.net.Net_Resolver.Resolver> return @:check32 this.dialer._resolver;
    public function __copy__() {
        return new T_sysDialer(dialer);
    }
}
