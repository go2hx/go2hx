package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.Dialer_asInterface) class Dialer_static_extension {
    @:keep
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } throw "Dialer:net.dialContext is not yet implemented";
    @:keep
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } throw "Dialer:net.dial is not yet implemented";
    @:keep
    static public function setMultipathTCP( _d:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>, _use:Bool):Void throw "Dialer:net.setMultipathTCP is not yet implemented";
    @:keep
    static public function multipathTCP( _d:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>):Bool throw "Dialer:net.multipathTCP is not yet implemented";
}
