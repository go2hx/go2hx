package stdgo.testing;
class T_indenter_static_extension {
    static public function write(_w:T_indenter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.Testing_T_indenter_static_extension.T_indenter_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
