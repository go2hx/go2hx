package stdgo.net;
class Dialer_static_extension {
    static public function dialContext(_d:Dialer, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.dialContext(_d, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dial(_d:Dialer, _network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.dial(_d, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setMultipathTCP(_d:Dialer, _use:Bool):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
        stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.setMultipathTCP(_d, _use);
    }
    static public function multipathTCP(_d:Dialer):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
        return stdgo._internal.net.Net_Dialer_static_extension.Dialer_static_extension.multipathTCP(_d);
    }
}
