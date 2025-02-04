package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_sharedMem_asInterface) class T_sharedMem_static_extension {
    @:keep
    @:tdfield
    static public function close( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _setValueLen( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>, _n:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _v = @:check2r _m._valueRef();
        if ((_n > _v.capacity : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("length %d larger than shared memory capacity %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_v.capacity)));
        };
        @:check2r _m._header()._valueLen = _n;
    }
    @:keep
    @:tdfield
    static public function _setValue( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _v = @:check2r _m._valueRef();
        if (((_b.length) > _v.capacity : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("value length %d larger than shared memory capacity %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_v.capacity)));
        };
        @:check2r _m._header()._valueLen = (_b.length);
        (_v.__slice__(0, _v.capacity) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
    }
    @:keep
    @:tdfield
    static public function _valueCopy( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _ref = @:check2r _m._valueRef();
        return stdgo._internal.bytes.Bytes_clone.clone(_ref);
    }
    @:keep
    @:tdfield
    static public function _valueRef( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _length = (@:check2r _m._header()._valueLen : stdgo.GoInt);
        var _valueOffset = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader() : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader))) : stdgo.GoInt);
        return ((@:checkr _m ?? throw "null pointer dereference")._region.__slice__(_valueOffset, (_valueOffset + _length : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _header( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader> {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        return ((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._region[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_count", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_valueLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_randState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_randInc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_rawInMem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader>);
    }
}
