package stdgo.testing;
class T_discard_static_extension {
    static public function write(_:T_discard, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.Testing_T_discard_static_extension.T_discard_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
