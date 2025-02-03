package stdgo.crypto.rand;
class T_reader_static_extension {
    static public function read(_r:T_reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.crypto.rand.Rand_T_reader.T_reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand_T_reader_static_extension.T_reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
