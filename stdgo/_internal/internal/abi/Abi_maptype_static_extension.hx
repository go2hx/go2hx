package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.MapType_asInterface) class MapType_static_extension {
    @:keep
    @:tdfield
    static public function hashMightPanic( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> = _mt;
        return ((@:checkr _mt ?? throw "null pointer dereference").flags & (16u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function needKeyUpdate( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> = _mt;
        return ((@:checkr _mt ?? throw "null pointer dereference").flags & (8u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function reflexiveKey( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> = _mt;
        return ((@:checkr _mt ?? throw "null pointer dereference").flags & (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function indirectElem( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> = _mt;
        return ((@:checkr _mt ?? throw "null pointer dereference").flags & (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function indirectKey( _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>):Bool {
        @:recv var _mt:stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> = _mt;
        return ((@:checkr _mt ?? throw "null pointer dereference").flags & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function uncommon( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_5 __self__.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public static function structType( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_5 __self__.structType();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.GoUIntptr return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function pointers( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool return @:_5 __self__.pointers();
    @:embedded
    @:embeddededffieldsffun
    public static function numMethod( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.GoInt return @:_5 __self__.numMethod();
    @:embedded
    @:embeddededffieldsffun
    public static function mapType( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_5 __self__.mapType();
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function kind( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo._internal.internal.abi.Abi_kind.Kind return @:_5 __self__.kind();
    @:embedded
    @:embeddededffieldsffun
    public static function isDirectIface( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool return @:_5 __self__.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public static function interfaceType( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_5 __self__.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public static function ifaceIndir( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool return @:_5 __self__.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public static function hasName( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool return @:_5 __self__.hasName();
    @:embedded
    @:embeddededffieldsffun
    public static function gcSlice( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function funcType( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_5 __self__.funcType();
    @:embedded
    @:embeddededffieldsffun
    public static function fieldAlign( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.GoInt return @:_5 __self__.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public static function exportedMethods( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_5 __self__.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_5 __self__.common();
    @:embedded
    @:embeddededffieldsffun
    public static function chanDir( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_5 __self__.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public static function arrayType( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_5 __self__.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public static function align( __self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.GoInt return @:_5 __self__.align();
}
