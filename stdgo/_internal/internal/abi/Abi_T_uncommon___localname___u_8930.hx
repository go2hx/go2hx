package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8930 {
    @:embedded
    public var interfaceType : stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType = ({} : stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (interfaceType != null) this.interfaceType = interfaceType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.interfaceType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.interfaceType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.interfaceType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.interfaceType.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.interfaceType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.interfaceType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.interfaceType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.interfaceType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.interfaceType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.interfaceType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.interfaceType.ifaceIndir();
    @:embedded
    public function isDirectIface():Bool return this.interfaceType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.interfaceType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.interfaceType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.interfaceType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.interfaceType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.interfaceType.numMethod();
    @:embedded
    public function pointers():Bool return this.interfaceType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.interfaceType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.interfaceType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.interfaceType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8930(interfaceType, _u);
    }
}
