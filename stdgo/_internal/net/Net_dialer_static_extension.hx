package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.Dialer_asInterface) class Dialer_static_extension {
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } throw "Dialer:net.dialContext is not yet implemented";
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } throw "Dialer:net.dial is not yet implemented";
    @:keep
    @:tdfield
    static public function setMultipathTCP( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _use:Bool):Void throw "Dialer:net.setMultipathTCP is not yet implemented";
    @:keep
    @:tdfield
    static public function multipathTCP( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>):Bool throw "Dialer:net.multipathTCP is not yet implemented";
}
