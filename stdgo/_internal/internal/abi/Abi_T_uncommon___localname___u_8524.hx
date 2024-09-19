package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8524 {
    @:embedded
    public var sliceType : stdgo._internal.internal.abi.Abi_SliceType.SliceType = ({} : stdgo._internal.internal.abi.Abi_SliceType.SliceType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?sliceType:stdgo._internal.internal.abi.Abi_SliceType.SliceType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (sliceType != null) this.sliceType = sliceType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.sliceType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.sliceType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.sliceType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.sliceType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.sliceType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.sliceType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.sliceType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.sliceType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.sliceType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.sliceType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.sliceType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.sliceType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.sliceType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.sliceType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.sliceType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.sliceType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.sliceType.numMethod();
    @:embedded
    public function pointers():Bool return this.sliceType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.sliceType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.sliceType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.sliceType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8524(sliceType, _u);
    }
}
