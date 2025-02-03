package stdgo.testing.iotest;
class T_timeoutReader_static_extension {
    static public function read(_r:T_timeoutReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_timeoutReader_static_extension.T_timeoutReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
