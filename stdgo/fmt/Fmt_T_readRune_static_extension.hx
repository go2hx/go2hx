package stdgo.fmt;
class T_readRune_static_extension {
    static public function unreadRune(_r:T_readRune):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>);
        return stdgo._internal.fmt.Fmt_T_readRune_static_extension.T_readRune_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:T_readRune):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_readRune_static_extension.T_readRune_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readByte(_r:T_readRune):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_readRune_static_extension.T_readRune_static_extension._readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
