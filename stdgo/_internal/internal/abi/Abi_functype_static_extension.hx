package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    @:tdfield
    static public function isVariadic( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        return ((@:checkr _t ?? throw "null pointer dereference").outCount & (32768 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
    @:keep
    @:tdfield
    static public function outSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        var _outCount = (@:check2r _t.numOut() : stdgo.GoUInt16);
        if (_outCount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
        };
        var _uadd = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((_t : stdgo._internal.internal.abi.Abi_functype.FuncType))) : stdgo.GoUIntptr);
        if (((@:checkr _t ?? throw "null pointer dereference").type.tFlag & (1 : stdgo._internal.internal.abi.Abi_tflag.TFlag) : stdgo._internal.internal.abi.Abi_tflag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_tflag.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.abi.Abi_uncommontype.UncommonType() : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType)))) : stdgo.GoUIntptr);
        };
        return ((stdgo._internal.internal.abi.Abi__addchecked._addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("outCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tFlag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_tflag.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gCData", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_nameoff.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_typeoff.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 131072) })) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>>).__slice__((@:checkr _t ?? throw "null pointer dereference").inCount, ((@:checkr _t ?? throw "null pointer dereference").inCount + _outCount : stdgo.GoUInt16), ((@:checkr _t ?? throw "null pointer dereference").inCount + _outCount : stdgo.GoUInt16)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
    }
    @:keep
    @:tdfield
    static public function inSlice( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        var _uadd = (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((_t : stdgo._internal.internal.abi.Abi_functype.FuncType))) : stdgo.GoUIntptr);
        if (((@:checkr _t ?? throw "null pointer dereference").type.tFlag & (1 : stdgo._internal.internal.abi.Abi_tflag.TFlag) : stdgo._internal.internal.abi.Abi_tflag.TFlag) != ((0 : stdgo._internal.internal.abi.Abi_tflag.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.abi.Abi_uncommontype.UncommonType() : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType)))) : stdgo.GoUIntptr);
        };
        if ((@:checkr _t ?? throw "null pointer dereference").inCount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
        };
        return ((stdgo._internal.internal.abi.Abi__addchecked._addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("t.inCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tFlag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_tflag.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gCData", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_nameoff.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_typeoff.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>>).__slice__(0, (@:checkr _t ?? throw "null pointer dereference").inCount, (@:checkr _t ?? throw "null pointer dereference").inCount) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>);
    }
    @:keep
    @:tdfield
    static public function out( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        return (@:check2r _t.outSlice()[(_i : stdgo.GoInt)]);
    }
    @:keep
    @:tdfield
    static public function numOut( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        return (((@:checkr _t ?? throw "null pointer dereference").outCount & (32767 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function numIn( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        return ((@:checkr _t ?? throw "null pointer dereference").inCount : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function in_( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> = _t;
        return @:check2r _t.inSlice()[(_i : stdgo.GoInt)];
    }
    @:embedded
    @:embeddededffieldsffun
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_5 __self__.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_5 __self__.structType();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoUIntptr return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.pointers();
    @:embedded
    @:embeddededffieldsffun
    public static function numMethod( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.numMethod();
    @:embedded
    @:embeddededffieldsffun
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_5 __self__.mapType();
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo._internal.internal.abi.Abi_kind.Kind return @:_5 __self__.kind();
    @:embedded
    @:embeddededffieldsffun
    public static function key( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.key();
    @:embedded
    @:embeddededffieldsffun
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_5 __self__.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool return @:_5 __self__.hasName();
    @:embedded
    @:embeddededffieldsffun
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_5 __self__.funcType();
    @:embedded
    @:embeddededffieldsffun
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_5 __self__.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public static function elem( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.elem();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.common();
    @:embedded
    @:embeddededffieldsffun
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_5 __self__.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_5 __self__.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public static function align( __self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoInt return @:_5 __self__.align();
}
