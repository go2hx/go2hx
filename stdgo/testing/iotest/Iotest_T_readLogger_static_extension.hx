package stdgo.testing.iotest;
class T_readLogger_static_extension {
    static public function read(_l:T_readLogger, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_readLogger_static_extension.T_readLogger_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
