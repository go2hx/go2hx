package stdgo.encoding.gob;
class T_benchmarkBuf_static_extension {
    static public function _reset(_b:T_benchmarkBuf):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        stdgo._internal.encoding.gob.Gob_T_benchmarkBuf_static_extension.T_benchmarkBuf_static_extension._reset(_b);
    }
    static public function readByte(_b:T_benchmarkBuf):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_benchmarkBuf_static_extension.T_benchmarkBuf_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_b:T_benchmarkBuf, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_benchmarkBuf_static_extension.T_benchmarkBuf_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
