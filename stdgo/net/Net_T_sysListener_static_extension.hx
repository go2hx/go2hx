package stdgo.net;
class T_sysListener_static_extension {
    public static function setMultipathTCP(__self__:stdgo._internal.net.Net_T_sysListener.T_sysListener, _0:Bool):Void {
        stdgo._internal.net.Net_T_sysListener_static_extension.T_sysListener_static_extension.setMultipathTCP(__self__, _0);
    }
    public static function multipathTCP(__self__:stdgo._internal.net.Net_T_sysListener.T_sysListener):Bool {
        return stdgo._internal.net.Net_T_sysListener_static_extension.T_sysListener_static_extension.multipathTCP(__self__);
    }
    public static function listenPacket(__self__:stdgo._internal.net.Net_T_sysListener.T_sysListener, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_T_sysListener_static_extension.T_sysListener_static_extension.listenPacket(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function listen(__self__:stdgo._internal.net.Net_T_sysListener.T_sysListener, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String):stdgo.Tuple<Listener, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_T_sysListener_static_extension.T_sysListener_static_extension.listen(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
