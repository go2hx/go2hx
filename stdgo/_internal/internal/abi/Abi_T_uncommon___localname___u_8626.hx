package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8626 {
    @:embedded
    public var arrayType : stdgo._internal.internal.abi.Abi_ArrayType.ArrayType = ({} : stdgo._internal.internal.abi.Abi_ArrayType.ArrayType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?arrayType:stdgo._internal.internal.abi.Abi_ArrayType.ArrayType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (arrayType != null) this.arrayType = arrayType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.arrayType.align();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.arrayType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.arrayType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.arrayType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.arrayType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.arrayType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.arrayType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.arrayType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.arrayType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.arrayType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.arrayType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.arrayType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.arrayType.kind();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.arrayType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.arrayType.numMethod();
    @:embedded
    public function pointers():Bool return this.arrayType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.arrayType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.arrayType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.arrayType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8626(arrayType, _u);
    }
}
