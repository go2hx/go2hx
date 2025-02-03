package stdgo.net;
class T_sysDialer_static_extension {
    public static function _resolver(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer):Resolver {
        return stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension._resolver(__self__);
    }
    public static function _fallbackDelay(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension._fallbackDelay(__self__);
    }
    public static function _dualStack(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer):Bool {
        return stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension._dualStack(__self__);
    }
    public static function _deadline(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension._deadline(__self__, _0, _1);
    }
    public static function setMultipathTCP(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer, _0:Bool):Void {
        stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension.setMultipathTCP(__self__, _0);
    }
    public static function multipathTCP(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer):Bool {
        return stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension.multipathTCP(__self__);
    }
    public static function dialContext(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension.dialContext(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function dial(__self__:stdgo._internal.net.Net_T_sysDialer.T_sysDialer, _0:String, _1:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_T_sysDialer_static_extension.T_sysDialer_static_extension.dial(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
