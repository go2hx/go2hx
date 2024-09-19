package stdgo._internal.internal.abi;
class Type__asInterface {
    @:keep
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value.key();
    @:keep
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:keep
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return __self__.value.exportedMethods();
    @:keep
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:keep
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    @:keep
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:keep
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return __self__.value.interfaceType();
    @:keep
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return __self__.value.funcType();
    @:keep
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return __self__.value.arrayType();
    @:keep
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return __self__.value.mapType();
    @:keep
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return __self__.value.structType();
    @:keep
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value.elem();
    @:keep
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return __self__.value.uncommon();
    @:keep
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return __self__.value.chanDir();
    @:keep
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value.common();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:keep
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:keep
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:keep
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:keep
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:keep
    public dynamic function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
