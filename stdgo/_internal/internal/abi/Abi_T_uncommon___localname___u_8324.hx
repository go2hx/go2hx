package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8324 {
    @:embedded
    public var ptrType : stdgo._internal.internal.abi.Abi_PtrType.PtrType = ({} : stdgo._internal.internal.abi.Abi_PtrType.PtrType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?ptrType:stdgo._internal.internal.abi.Abi_PtrType.PtrType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (ptrType != null) this.ptrType = ptrType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.ptrType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.ptrType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.ptrType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.ptrType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.ptrType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.ptrType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.ptrType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.ptrType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.ptrType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.ptrType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.ptrType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.ptrType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.ptrType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.ptrType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.ptrType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.ptrType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.ptrType.numMethod();
    @:embedded
    public function pointers():Bool return this.ptrType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.ptrType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.ptrType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.ptrType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8324(ptrType, _u);
    }
}
