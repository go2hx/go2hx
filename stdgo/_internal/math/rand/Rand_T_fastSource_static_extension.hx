package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_fastSource_asInterface) class T_fastSource_static_extension {
    @:keep
    static public function _read( _fs:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>, _p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fs:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource> = _fs;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _fs._mu.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand__read._read(_p, stdgo.Go.asInterface(_fs), _readVal, _readPos);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _fs._mu.unlock();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function uint64( _:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>):stdgo.GoUInt64 {
        @:recv var _:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource> = _;
        return stdgo._internal.math.rand.Rand__fastrand64._fastrand64();
    }
    @:keep
    static public function seed( _:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>, _0:stdgo.GoInt64):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource> = _;
        throw stdgo.Go.toInterface(("internal error: call to fastSource.Seed" : stdgo.GoString));
    }
    @:keep
    static public function int63( _:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>):stdgo.GoInt64 {
        @:recv var _:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource> = _;
        return ((stdgo._internal.math.rand.Rand__fastrand64._fastrand64() & (9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
}