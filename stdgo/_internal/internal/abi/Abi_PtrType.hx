package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_PtrType_static_extension.PtrType_static_extension) class PtrType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi_Type_.Type_ = ({} : stdgo._internal.internal.abi.Abi_Type_.Type_);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
    public function new(?type:stdgo._internal.internal.abi.Abi_Type_.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_align():() -> stdgo.GoInt return @:check32 this.type.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return @:check32 this.type.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir;
    @:embedded
    @:embeddededffieldsffun
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return @:check32 this.type.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check32 this.type.common;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>;
    @:embedded
    @:embeddededffieldsffun
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return @:check32 this.type.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this.type.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return @:check32 this.type.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.type.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_hasName():() -> Bool return @:check32 this.type.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_ifaceIndir():() -> Bool return @:check32 this.type.ifaceIndir;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return @:check32 this.type.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isDirectIface():() -> Bool return @:check32 this.type.isDirectIface;
    public var key(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    @:embeddededffieldsffun
    public function get_key():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check32 this.type.key;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_Kind.Kind;
    @:embedded
    @:embeddededffieldsffun
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_Kind.Kind return @:check32 this.type.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check32 this.type.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return @:check32 this.type.mapType;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_numMethod():() -> stdgo.GoInt return @:check32 this.type.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_pointers():() -> Bool return @:check32 this.type.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this.type.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return @:check32 this.type.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return @:check32 this.type.uncommon;
    public function __copy__() {
        return new PtrType(type, elem);
    }
}
