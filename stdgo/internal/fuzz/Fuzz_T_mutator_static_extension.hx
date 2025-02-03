package stdgo.internal.fuzz;
class T_mutator_static_extension {
    static public function _mutateBytes(_m:T_mutator, _ptrB:Array<std.UInt>):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _ptrB = (_ptrB : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateBytes(_m, _ptrB);
    }
    static public function _mutateFloat(_m:T_mutator, _v:StdTypes.Float, _maxValue:StdTypes.Float):StdTypes.Float {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _v = (_v : stdgo.GoFloat64);
        final _maxValue = (_maxValue : stdgo.GoFloat64);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateFloat(_m, _v, _maxValue);
    }
    static public function _mutateUInt(_m:T_mutator, _v:haxe.UInt64, _maxValue:haxe.UInt64):haxe.UInt64 {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _v = (_v : stdgo.GoUInt64);
        final _maxValue = (_maxValue : stdgo.GoUInt64);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateUInt(_m, _v, _maxValue);
    }
    static public function _mutateInt(_m:T_mutator, _v:haxe.Int64, _maxValue:haxe.Int64):haxe.Int64 {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _v = (_v : stdgo.GoInt64);
        final _maxValue = (_maxValue : stdgo.GoInt64);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutateInt(_m, _v, _maxValue);
    }
    static public function _mutate(_m:T_mutator, _vals:Array<stdgo.AnyInterface>, _maxBytes:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _maxBytes = (_maxBytes : stdgo.GoInt);
        stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._mutate(_m, _vals, _maxBytes);
    }
    static public function _chooseLen(_m:T_mutator, _n:StdTypes.Int):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._chooseLen(_m, _n);
    }
    static public function _randByteOrder(_m:T_mutator):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._randByteOrder(_m);
    }
    static public function _rand(_m:T_mutator, _n:StdTypes.Int):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension._rand(_m, _n);
    }
}
