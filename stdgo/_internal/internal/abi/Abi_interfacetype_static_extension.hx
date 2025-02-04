package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.InterfaceType_asInterface) class InterfaceType_static_extension {
    @:keep
    @:tdfield
    static public function numMethod( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> = _t;
        return ((@:checkr _t ?? throw "null pointer dereference").methods.length);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_5 __self__.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_5 __self__.structType();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.GoUIntptr return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool return @:_5 __self__.pointers();
    @:embedded
    @:embeddededffieldsffun
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_5 __self__.mapType();
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo._internal.internal.abi.Abi_kind.Kind return @:_5 __self__.kind();
    @:embedded
    @:embeddededffieldsffun
    public static function key( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.key();
    @:embedded
    @:embeddededffieldsffun
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool return @:_5 __self__.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_5 __self__.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool return @:_5 __self__.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool return @:_5 __self__.hasName();
    @:embedded
    @:embeddededffieldsffun
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_5 __self__.funcType();
    @:embedded
    @:embeddededffieldsffun
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.GoInt return @:_5 __self__.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_5 __self__.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public static function elem( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.elem();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.common();
    @:embedded
    @:embeddededffieldsffun
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_5 __self__.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_5 __self__.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public static function align( __self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.GoInt return @:_5 __self__.align();
}
