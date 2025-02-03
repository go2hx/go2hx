package stdgo.log;
class T_discard_static_extension {
    static public function write(_:T_discard, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.Log_T_discard_static_extension.T_discard_static_extension.write(_, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
