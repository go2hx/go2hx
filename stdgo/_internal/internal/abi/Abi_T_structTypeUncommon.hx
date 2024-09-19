package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_T_structTypeUncommon_static_extension.T_structTypeUncommon_static_extension) class T_structTypeUncommon {
    @:embedded
    public var structType : stdgo._internal.internal.abi.Abi_StructType.StructType = ({} : stdgo._internal.internal.abi.Abi_StructType.StructType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?structType:stdgo._internal.internal.abi.Abi_StructType.StructType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (structType != null) this.structType = structType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.structType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.structType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.structType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.structType.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.structType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.structType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.structType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.structType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.structType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.structType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.structType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.structType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.structType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.structType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.structType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.structType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.structType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.structType.numMethod();
    @:embedded
    public function pointers():Bool return this.structType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.structType.size();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.structType.uncommon();
    public function __copy__() {
        return new T_structTypeUncommon(structType, _u);
    }
}
