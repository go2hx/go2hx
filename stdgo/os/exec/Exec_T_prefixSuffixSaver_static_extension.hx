package stdgo.os.exec;
class T_prefixSuffixSaver_static_extension {
    static public function bytes(_w:T_prefixSuffixSaver):Array<std.UInt> {
        final _w = (_w : stdgo.Ref<stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver>);
        return [for (i in stdgo._internal.os.exec.Exec_T_prefixSuffixSaver_static_extension.T_prefixSuffixSaver_static_extension.bytes(_w)) i];
    }
    static public function _fill(_w:T_prefixSuffixSaver, _dst:Array<std.UInt>, _p:Array<std.UInt>):Array<std.UInt> {
        final _w = (_w : stdgo.Ref<stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver>);
        final _dst = (_dst : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.os.exec.Exec_T_prefixSuffixSaver_static_extension.T_prefixSuffixSaver_static_extension._fill(_w, _dst, _p)) i];
    }
    static public function write(_w:T_prefixSuffixSaver, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.exec.Exec_T_prefixSuffixSaver_static_extension.T_prefixSuffixSaver_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
