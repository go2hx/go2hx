package stdgo._internal.math.rand;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_lockedSource_asInterface) class T_lockedSource_static_extension {
    @:keep
    @:tdfield
    static public function _read( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand__read._read(_p, stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._s), _readVal, _readPos);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.unlock();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._s == null || ((@:checkr _r ?? throw "null pointer dereference")._s : Dynamic).__nil__)) {
            (@:checkr _r ?? throw "null pointer dereference")._s = stdgo._internal.math.rand.Rand__newsource._newSource(_seed);
        } else {
            @:check2r (@:checkr _r ?? throw "null pointer dereference")._s.seed(_seed);
        };
    }
    @:keep
    @:tdfield
    static public function _seedPos( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _seed:stdgo.GoInt64, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.lock();
        @:check2r _r._seed(_seed);
        _readPos.value = (0 : stdgo.GoInt8);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.unlock();
    }
    @:keep
    @:tdfield
    static public function seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.lock();
        @:check2r _r._seed(_seed);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.unlock();
    }
    @:keep
    @:tdfield
    static public function uint64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoUInt64);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.lock();
        _n = @:check2r (@:checkr _r ?? throw "null pointer dereference")._s.uint64();
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.unlock();
        return _n;
    }
    @:keep
    @:tdfield
    static public function int63( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt64);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.lock();
        _n = @:check2r (@:checkr _r ?? throw "null pointer dereference")._s.int63();
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._lk.unlock();
        return _n;
    }
}
