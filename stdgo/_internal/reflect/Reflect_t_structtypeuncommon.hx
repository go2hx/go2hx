package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension) class T_structTypeUncommon {
    @:embedded
    public var _structType : stdgo._internal.reflect.Reflect_t_structtype.T_structType = ({} : stdgo._internal.reflect.Reflect_t_structtype.T_structType);
    public function new(?_structType:stdgo._internal.reflect.Reflect_t_structtype.T_structType) {
        if (_structType != null) this._structType = _structType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_align():() -> stdgo.GoInt return @:check32 this._structType.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:check32 this._structType.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_chandir.ChanDir;
    @:embedded
    @:embeddededffieldsffun
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:check32 this._structType.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this._structType.common;
    public var elem(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_elem():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this._structType.elem;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    @:embeddededffieldsffun
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check32 this._structType.exportedMethods;
    public var field(get, never) : stdgo.GoInt -> stdgo._internal.reflect.Reflect_structfield.StructField;
    @:embedded
    @:embeddededffieldsffun
    public function get_field():stdgo.GoInt -> stdgo._internal.reflect.Reflect_structfield.StructField return @:check32 this._structType.field;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this._structType.fieldAlign;
    public var fieldByIndex(get, never) : stdgo.Slice<stdgo.GoInt> -> stdgo._internal.reflect.Reflect_structfield.StructField;
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldByIndex():stdgo.Slice<stdgo.GoInt> -> stdgo._internal.reflect.Reflect_structfield.StructField return @:check32 this._structType.fieldByIndex;
    public var fieldByName(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldByName():stdgo.GoString -> { var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return @:check32 this._structType.fieldByName;
    public var fieldByNameFunc(get, never) : (stdgo.GoString -> Bool) -> { var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldByNameFunc():(stdgo.GoString -> Bool) -> { var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return @:check32 this._structType.fieldByNameFunc;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:check32 this._structType.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this._structType.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_hasName():() -> Bool return @:check32 this._structType.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_ifaceIndir():() -> Bool return @:check32 this._structType.ifaceIndir;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:check32 this._structType.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isDirectIface():() -> Bool return @:check32 this._structType.isDirectIface;
    public var key(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_key():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this._structType.key;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_kind.Kind;
    @:embedded
    @:embeddededffieldsffun
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_kind.Kind return @:check32 this._structType.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check32 this._structType.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:check32 this._structType.mapType;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numMethod():() -> stdgo.GoInt return @:check32 this._structType.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_pointers():() -> Bool return @:check32 this._structType.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this._structType.size;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check32 this._structType.uncommon;
    public function __copy__() {
        return new T_structTypeUncommon(_structType);
    }
}
