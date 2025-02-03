package stdgo.testing.iotest;
class T_errWriter_static_extension {
    static public function write(_w:T_errWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_errWriter_static_extension.T_errWriter_static_extension.write(_w, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
