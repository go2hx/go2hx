package stdgo.internal.fuzz;
class T_contextReader_static_extension {
    static public function read(_cr:T_contextReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_contextReader_static_extension.T_contextReader_static_extension.read(_cr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
