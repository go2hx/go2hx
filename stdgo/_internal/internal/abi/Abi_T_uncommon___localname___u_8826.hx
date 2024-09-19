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
    @:embedded
    public function align():stdgo.GoInt return this.mapType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return this.mapType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return this.mapType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return this.mapType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return this.mapType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return this.mapType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return this.mapType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return this.mapType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return this.mapType.hasName();
    @:embedded
    public function hashMightPanic():Bool return this.mapType.hashMightPanic();
    @:embedded
    public function ifaceIndir():Bool return this.mapType.ifaceIndir();
    @:embedded
    public function indirectElem():Bool return this.mapType.indirectElem();
    @:embedded
    public function indirectKey():Bool return this.mapType.indirectKey();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return this.mapType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return this.mapType.isDirectIface();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return this.mapType.kind();
    @:embedded
    public function len():stdgo.GoInt return this.mapType.len();
    @:embedded
    public function needKeyUpdate():Bool return this.mapType.needKeyUpdate();
    @:embedded
    public function numMethod():stdgo.GoInt return this.mapType.numMethod();
    @:embedded
    public function pointers():Bool return this.mapType.pointers();
    @:embedded
    public function reflexiveKey():Bool return this.mapType.reflexiveKey();
    @:embedded
    public function size():stdgo.GoUIntptr return this.mapType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return this.mapType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return this.mapType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8826(mapType, _u);
    }
}
