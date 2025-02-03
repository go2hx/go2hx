package stdgo.time;
class T_dataIO_static_extension {
    static public function _rest(_d:T_dataIO):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>);
        return [for (i in stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._rest(_d)) i];
    }
    static public function _byte(_d:T_dataIO):stdgo.Tuple<std.UInt, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>);
        return {
            final obj = stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._byte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _big8(_d:T_dataIO):stdgo.Tuple<haxe.UInt64, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>);
        return {
            final obj = stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._big8(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _big4(_d:T_dataIO):stdgo.Tuple<std.UInt, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>);
        return {
            final obj = stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._big4(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(_d:T_dataIO, _n:StdTypes.Int):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._read(_d, _n)) i];
    }
}
