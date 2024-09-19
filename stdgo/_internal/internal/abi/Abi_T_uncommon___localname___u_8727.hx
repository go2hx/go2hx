package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8727 {
    @:embedded
    public var chanType : stdgo._internal.internal.abi.Abi_ChanType.ChanType = ({} : stdgo._internal.internal.abi.Abi_ChanType.ChanType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?chanType:stdgo._internal.internal.abi.Abi_ChanType.ChanType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (chanType != null) this.chanType = chanType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.chanType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.chanType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.chanType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.chanType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.chanType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.chanType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.chanType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.chanType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.chanType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.chanType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.chanType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.chanType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.chanType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.chanType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.chanType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.chanType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return this.chanType.numMethod();
    @:embedded
    public function pointers():Bool return this.chanType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.chanType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.chanType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.chanType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8727(chanType, _u);
    }
}
