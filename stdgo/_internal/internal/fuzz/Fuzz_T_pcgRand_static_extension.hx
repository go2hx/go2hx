package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_pcgRand_asInterface) class T_pcgRand_static_extension {
    @:keep
    static public function _bool( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        return (_r._uint32() & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function _exp2( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        return stdgo._internal.math.bits.Bits_trailingZeros32.trailingZeros32(_r._uint32());
    }
    @:keep
    static public function _uint32n( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>, _n:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        var _v = (_r._uint32() : stdgo.GoUInt32);
        var _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _low = (_prod : stdgo.GoUInt32);
        if ((_low < _n : Bool)) {
            var _thresh = ((-(_n : stdgo.GoInt32) : stdgo.GoUInt32) % _n : stdgo.GoUInt32);
            while ((_low < _thresh : Bool)) {
                _v = _r._uint32();
                _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
                _low = (_prod : stdgo.GoUInt32);
            };
        };
        return ((_prod >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
    @:keep
    static public function _intn( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        if (((_n : stdgo.GoUInt32) : stdgo.GoInt) != (_n)) {
            throw stdgo.Go.toInterface(("large Intn" : stdgo.GoString));
        };
        return (_r._uint32n((_n : stdgo.GoUInt32)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint32( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        var _x = (_r._state : stdgo.GoUInt64);
        _r._step();
        return stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_x >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ _x : stdgo.GoUInt64)) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), -((_x >> (59i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt));
    }
    @:keep
    static public function _restore( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>, _randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        _r._state = _randState;
        _r._inc = _randInc;
    }
    @:keep
    static public function _save( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>, _randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        _randState.value = _r._state;
        _randInc.value = _r._inc;
    }
    @:keep
    static public function _step( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> = _r;
        _r._state = (_r._state * ((6364136223846793005i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _r._state = (_r._state + (_r._inc) : stdgo.GoUInt64);
    }
}
