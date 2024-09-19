package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.MapType_asInterface) class MapType_static_extension {
    @:keep
    static public function hashMightPanic( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> = _mt;
        return (_mt.flags & (16u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function needKeyUpdate( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> = _mt;
        return (_mt.flags & (8u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function reflexiveKey( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> = _mt;
        return (_mt.flags & (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function indirectElem( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> = _mt;
        return (_mt.flags & (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function indirectKey( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> = _mt;
        return (_mt.flags & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:embedded
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo._internal.internal.abi.Abi_Kind.Kind return __self__.kind();
    @:embedded
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo.GoInt return __self__.align();
}
