package stdgo._internal.internal.abi;
class T_structTypeUncommon_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.abi.Abi_T_structTypeUncommon.T_structTypeUncommon>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
