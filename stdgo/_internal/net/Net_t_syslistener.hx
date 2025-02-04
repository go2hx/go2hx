package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension) class T_sysListener {
    @:embedded
    public var listenConfig : stdgo._internal.net.Net_listenconfig.ListenConfig = ({} : stdgo._internal.net.Net_listenconfig.ListenConfig);
    public function new(?listenConfig:stdgo._internal.net.Net_listenconfig.ListenConfig) {
        if (listenConfig != null) this.listenConfig = listenConfig;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var listen(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_listen():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return @:check32 this.listenConfig.listen;
    public var listenPacket(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_listenPacket():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return @:check32 this.listenConfig.listenPacket;
    public var multipathTCP(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_multipathTCP():() -> Bool return @:check32 this.listenConfig.multipathTCP;
    public var setMultipathTCP(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setMultipathTCP():Bool -> Void return @:check32 this.listenConfig.setMultipathTCP;
    public function __copy__() {
        return new T_sysListener(listenConfig);
    }
}
