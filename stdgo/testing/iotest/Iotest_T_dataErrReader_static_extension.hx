package stdgo.testing.iotest;
class T_dataErrReader_static_extension {
    static public function read(_r:T_dataErrReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_dataErrReader_static_extension.T_dataErrReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
