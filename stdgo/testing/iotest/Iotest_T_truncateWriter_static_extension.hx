package stdgo.testing.iotest;
class T_truncateWriter_static_extension {
    static public function write(_t:T_truncateWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_truncateWriter_static_extension.T_truncateWriter_static_extension.write(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
