package stdgo.math.rand;
class T_lockedSource_static_extension {
    static public function _read(_r:T_lockedSource, _p:Array<std.UInt>, _readVal:stdgo.Pointer<haxe.Int64>, _readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension._read(_r, _p, _readVal, _readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _seed(_r:T_lockedSource, _seed:haxe.Int64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension._seed(_r, _seed);
    }
    static public function _seedPos(_r:T_lockedSource, _seed:haxe.Int64, _readPos:stdgo.Pointer<StdTypes.Int>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension._seedPos(_r, _seed, _readPos);
    }
    static public function seed(_r:T_lockedSource, _seed:haxe.Int64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension.seed(_r, _seed);
    }
    static public function uint64(_r:T_lockedSource):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>);
        return stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension.uint64(_r);
    }
    static public function int63(_r:T_lockedSource):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>);
        return stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension.int63(_r);
    }
}
