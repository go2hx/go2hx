package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_StructType_static_extension.StructType_static_extension) class StructType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi_Type_.Type_ = ({} : stdgo._internal.internal.abi.Abi_Type_.Type_);
    public var pkgPath : stdgo._internal.internal.abi.Abi_Name.Name = ({} : stdgo._internal.internal.abi.Abi_Name.Name);
    public var fields : stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField> = (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField>);
    public function new(?type:stdgo._internal.internal.abi.Abi_Type_.Type_, ?pkgPath:stdgo._internal.internal.abi.Abi_Name.Name, ?fields:stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField>) {
        if (type != null) this.type = type;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (fields != null) this.fields = fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_align():() -> stdgo.GoInt return @:check3 this.type.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return @:check3 this.type.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir;
    @:embedded
    @:embeddededffieldsffun
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return @:check3 this.type.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check3 this.type.common;
    public var elem(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_elem():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check3 this.type.elem;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>;
    @:embedded
    @:embeddededffieldsffun
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return @:check3 this.type.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldAlign():() -> stdgo.GoInt return @:check3 this.type.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return @:check3 this.type.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check3 this.type.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_hasName():() -> Bool return @:check3 this.type.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_ifaceIndir():() -> Bool return @:check3 this.type.ifaceIndir;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return @:check3 this.type.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isDirectIface():() -> Bool return @:check3 this.type.isDirectIface;
    public var key(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_key():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check3 this.type.key;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_Kind.Kind;
    @:embedded
    @:embeddededffieldsffun
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_Kind.Kind return @:check3 this.type.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check3 this.type.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return @:check3 this.type.mapType;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numMethod():() -> stdgo.GoInt return @:check3 this.type.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_pointers():() -> Bool return @:check3 this.type.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoUIntptr return @:check3 this.type.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return @:check3 this.type.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return @:check3 this.type.uncommon;
    public function __copy__() {
        return new StructType(type, pkgPath, fields);
    }
}
