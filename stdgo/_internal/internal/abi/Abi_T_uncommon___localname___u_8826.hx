package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8826 {
    @:embedded
    public var mapType : stdgo._internal.internal.abi.Abi_MapType.MapType = ({} : stdgo._internal.internal.abi.Abi_MapType.MapType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?mapType:stdgo._internal.internal.abi.Abi_MapType.MapType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (mapType != null) this.mapType = mapType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_align():() -> stdgo.GoInt return @:check3 this.mapType.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType>;
    @:embedded
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return @:check3 this.mapType.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir;
    @:embedded
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return @:check3 this.mapType.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check3 this.mapType.common;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>;
    @:embedded
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return @:check3 this.mapType.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_fieldAlign():() -> stdgo.GoInt return @:check3 this.mapType.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>;
    @:embedded
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return @:check3 this.mapType.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check3 this.mapType.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    public function get_hasName():() -> Bool return @:check3 this.mapType.hasName;
    public var hashMightPanic(get, never) : () -> Bool;
    @:embedded
    public function get_hashMightPanic():() -> Bool return @:check3 this.mapType.hashMightPanic;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    public function get_ifaceIndir():() -> Bool return @:check3 this.mapType.ifaceIndir;
    public var indirectElem(get, never) : () -> Bool;
    @:embedded
    public function get_indirectElem():() -> Bool return @:check3 this.mapType.indirectElem;
    public var indirectKey(get, never) : () -> Bool;
    @:embedded
    public function get_indirectKey():() -> Bool return @:check3 this.mapType.indirectKey;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType>;
    @:embedded
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return @:check3 this.mapType.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    public function get_isDirectIface():() -> Bool return @:check3 this.mapType.isDirectIface;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_Kind.Kind;
    @:embedded
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_Kind.Kind return @:check3 this.mapType.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_len():() -> stdgo.GoInt return @:check3 this.mapType.len;
    public var needKeyUpdate(get, never) : () -> Bool;
    @:embedded
    public function get_needKeyUpdate():() -> Bool return @:check3 this.mapType.needKeyUpdate;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_numMethod():() -> stdgo.GoInt return @:check3 this.mapType.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    public function get_pointers():() -> Bool return @:check3 this.mapType.pointers;
    public var reflexiveKey(get, never) : () -> Bool;
    @:embedded
    public function get_reflexiveKey():() -> Bool return @:check3 this.mapType.reflexiveKey;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    public function get_size():() -> stdgo.GoUIntptr return @:check3 this.mapType.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType>;
    @:embedded
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return @:check3 this.mapType.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType>;
    @:embedded
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return @:check3 this.mapType.uncommon;
    public function __copy__() {
        return new T_uncommon___localname___u_8826(mapType, _u);
    }
}
