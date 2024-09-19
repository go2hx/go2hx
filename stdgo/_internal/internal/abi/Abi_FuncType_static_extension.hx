package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    static public function isVariadic( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        return (_t.outCount & (32768 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
    @:keep
    static public function outSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>):stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        var _outCount = (_t.numOut() : stdgo.GoUInt16);
        if (_outCount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>>);
        };
        var _uadd = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((_t : stdgo._internal.internal.abi.Abi_FuncType.FuncType))) : stdgo.GoUIntptr);
        if ((_t.type.tflag & (1 : stdgo._internal.internal.abi.Abi_TFlag.TFlag) : stdgo._internal.internal.abi.Abi_TFlag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_TFlag.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.abi.Abi_UncommonType.UncommonType() : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType)))) : stdgo.GoUIntptr);
        };
        return ((stdgo._internal.internal.abi.Abi__addChecked._addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("outCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TFlag.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_NameOff.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TypeOff.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 131072) })) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>>>).__slice__(_t.inCount, (_t.inCount + _outCount : stdgo.GoUInt16), (_t.inCount + _outCount : stdgo.GoUInt16)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>>);
    }
    @:keep
    static public function inSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>):stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        var _uadd = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((_t : stdgo._internal.internal.abi.Abi_FuncType.FuncType))) : stdgo.GoUIntptr);
        if ((_t.type.tflag & (1 : stdgo._internal.internal.abi.Abi_TFlag.TFlag) : stdgo._internal.internal.abi.Abi_TFlag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_TFlag.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.abi.Abi_UncommonType.UncommonType() : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType)))) : stdgo.GoUIntptr);
        };
        if (_t.inCount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>>);
        };
        return ((stdgo._internal.internal.abi.Abi__addChecked._addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("t.inCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TFlag.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_NameOff.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TypeOff.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>>>).__slice__(0, _t.inCount, _t.inCount) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>>);
    }
    @:keep
    static public function out( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        return (_t.outSlice()[(_i : stdgo.GoInt)]);
    }
    @:keep
    static public function numOut( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        return ((_t.outCount & (32767 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt);
    }
    @:keep
    static public function numIn( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        return (_t.inCount : stdgo.GoInt);
    }
    @:keep
    static public function in_( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> = _t;
        return _t.inSlice()[(_i : stdgo.GoInt)];
    }
    @:embedded
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo._internal.internal.abi.Abi_Kind.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.elem();
    @:embedded
    public static function common( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.GoInt return __self__.align();
}
