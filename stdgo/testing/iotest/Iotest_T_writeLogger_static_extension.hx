package stdgo.testing.iotest;
class T_writeLogger_static_extension {
    static public function write(_l:T_writeLogger, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_writeLogger_static_extension.T_writeLogger_static_extension.write(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
