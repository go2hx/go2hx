package stdgo.internal.fuzz;
class T_sharedMem_static_extension {
    static public function close(_m:T_sharedMem):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        return stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension.close(_m);
    }
    static public function _setValueLen(_m:T_sharedMem, _n:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._setValueLen(_m, _n);
    }
    static public function _setValue(_m:T_sharedMem, _b:Array<std.UInt>):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._setValue(_m, _b);
    }
    static public function _valueCopy(_m:T_sharedMem):Array<std.UInt> {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        return [for (i in stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._valueCopy(_m)) i];
    }
    static public function _valueRef(_m:T_sharedMem):Array<std.UInt> {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        return [for (i in stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._valueRef(_m)) i];
    }
    static public function _header(_m:T_sharedMem):T_sharedMemHeader {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        return stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension._header(_m);
    }
}
