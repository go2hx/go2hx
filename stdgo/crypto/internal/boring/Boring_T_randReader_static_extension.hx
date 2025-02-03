package stdgo.crypto.internal.boring;
class T_randReader_static_extension {
    static public function read(_:T_randReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_T_randReader_static_extension.T_randReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
