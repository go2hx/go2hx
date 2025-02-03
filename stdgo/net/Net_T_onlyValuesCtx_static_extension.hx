package stdgo.net;
class T_onlyValuesCtx_static_extension {
    static public function value(_ovc:T_onlyValuesCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _ovc = (_ovc : stdgo.Ref<stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx>);
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.net.Net_T_onlyValuesCtx_static_extension.T_onlyValuesCtx_static_extension.value(_ovc, _key);
    }
    public static function err(__self__:stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx):stdgo.Error {
        return stdgo._internal.net.Net_T_onlyValuesCtx_static_extension.T_onlyValuesCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx):stdgo.Chan<{ }> {
        return stdgo._internal.net.Net_T_onlyValuesCtx_static_extension.T_onlyValuesCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.net.Net_T_onlyValuesCtx.T_onlyValuesCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.net.Net_T_onlyValuesCtx_static_extension.T_onlyValuesCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
