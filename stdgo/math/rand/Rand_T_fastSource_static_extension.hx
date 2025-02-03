package stdgo.math.rand;
class T_fastSource_static_extension {
    static public function _read(_fs:T_fastSource, _p:Array<std.UInt>, _readVal:stdgo.Pointer<haxe.Int64>, _readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension._read(_fs, _p, _readVal, _readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_:T_fastSource):haxe.UInt64 {
        final _ = (_ : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>);
        return stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension.uint64(_);
    }
    static public function seed(_:T_fastSource, _0:haxe.Int64):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>);
        final _0 = (_0 : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension.seed(_, _0);
    }
    static public function int63(_:T_fastSource):haxe.Int64 {
        final _ = (_ : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>);
        return stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension.int63(_);
    }
}
