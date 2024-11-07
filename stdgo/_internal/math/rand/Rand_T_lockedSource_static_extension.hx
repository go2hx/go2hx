package stdgo._internal.math.rand;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_lockedSource_asInterface) class T_lockedSource_static_extension {
    @:keep
    static public function _read( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>, _p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _r._lk.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand__read._read(_p, stdgo.Go.asInterface(_r._s), _readVal, _readPos);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._lk.unlock();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = _r;
        if ((_r._s == null || (_r._s : Dynamic).__nil__)) {
            _r._s = stdgo._internal.math.rand.Rand__newSource._newSource(_seed);
        } else {
            _r._s.seed(_seed);
        };
    }
    @:keep
    static public function _seedPos( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>, _seed:stdgo.GoInt64, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = _r;
        _r._lk.lock();
        _r._seed(_seed);
        _readPos.value = (0 : stdgo.GoInt8);
        _r._lk.unlock();
    }
    @:keep
    static public function seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = _r;
        _r._lk.lock();
        _r._seed(_seed);
        _r._lk.unlock();
    }
    @:keep
    static public function uint64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoUInt64);
        _r._lk.lock();
        _n = _r._s.uint64();
        _r._lk.unlock();
        return _n;
    }
    @:keep
    static public function int63( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt64);
        _r._lk.lock();
        _n = _r._s.int63();
        _r._lk.unlock();
        return _n;
    }
}
