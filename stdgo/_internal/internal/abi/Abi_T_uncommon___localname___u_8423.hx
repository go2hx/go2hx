package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8423 {
    @:embedded
    public var funcType : stdgo._internal.internal.abi.Abi_FuncType.FuncType = ({} : stdgo._internal.internal.abi.Abi_FuncType.FuncType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?funcType:stdgo._internal.internal.abi.Abi_FuncType.FuncType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (funcType != null) this.funcType = funcType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return this.funcType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.funcType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.funcType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.funcType.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.funcType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.funcType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.funcType.fieldAlign();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.funcType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.funcType.hasName();
    @:embedded
    public function ifaceIndir():Bool return this.funcType.ifaceIndir();
    @:embedded
    public function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.funcType.in_(_i);
    @:embedded
    public function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>> return this.funcType.inSlice();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.funcType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.funcType.isDirectIface();
    @:embedded
    public function isVariadic():Bool return this.funcType.isVariadic();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.funcType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.funcType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.funcType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return this.funcType.mapType();
    @:embedded
    public function numIn():stdgo.GoInt return this.funcType.numIn();
    @:embedded
    public function numMethod():stdgo.GoInt return this.funcType.numMethod();
    @:embedded
    public function numOut():stdgo.GoInt return this.funcType.numOut();
    @:embedded
    public function out(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.funcType.out(_i);
    @:embedded
    public function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>> return this.funcType.outSlice();
    @:embedded
    public function pointers():Bool return this.funcType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return this.funcType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.funcType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.funcType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8423(funcType, _u);
    }
}
