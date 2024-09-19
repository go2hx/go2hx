package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.InterfaceType_asInterface) class InterfaceType_static_extension {
    @:keep
    static public function numMethod( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> = _t;
        return (_t.methods.length);
    }
    @:embedded
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):Bool return __self__.pointers();
    @:embedded
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo._internal.internal.abi.Abi_Kind.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.elem();
    @:embedded
    public static function common( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo.GoInt return __self__.align();
}
