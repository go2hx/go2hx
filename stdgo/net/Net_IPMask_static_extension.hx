package stdgo.net;
class IPMask_static_extension {
    static public function string(_m:IPMask):String {
        return stdgo._internal.net.Net_IPMask_static_extension.IPMask_static_extension.string(_m);
    }
    static public function size(_m:IPMask):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.net.Net_IPMask_static_extension.IPMask_static_extension.size(_m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
