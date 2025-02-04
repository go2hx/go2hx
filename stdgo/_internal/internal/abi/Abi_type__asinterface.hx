package stdgo._internal.internal.abi;
class Type__asInterface {
    @:keep
    @:tdfield
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.key();
    @:keep
    @:tdfield
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:keep
    @:tdfield
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_0 __self__.value.exportedMethods();
    @:keep
    @:tdfield
    public dynamic function fieldAlign():stdgo.GoInt return @:_0 __self__.value.fieldAlign();
    @:keep
    @:tdfield
    public dynamic function align():stdgo.GoInt return @:_0 __self__.value.align();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_0 __self__.value.interfaceType();
    @:keep
    @:tdfield
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_0 __self__.value.funcType();
    @:keep
    @:tdfield
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_0 __self__.value.arrayType();
    @:keep
    @:tdfield
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_0 __self__.value.mapType();
    @:keep
    @:tdfield
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_0 __self__.value.structType();
    @:keep
    @:tdfield
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.elem();
    @:keep
    @:tdfield
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_0 __self__.value.uncommon();
    @:keep
    @:tdfield
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_0 __self__.value.chanDir();
    @:keep
    @:tdfield
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.common();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.gcSlice(_begin, _end);
    @:keep
    @:tdfield
    public dynamic function isDirectIface():Bool return @:_0 __self__.value.isDirectIface();
    @:keep
    @:tdfield
    public dynamic function ifaceIndir():Bool return @:_0 __self__.value.ifaceIndir();
    @:keep
    @:tdfield
    public dynamic function pointers():Bool return @:_0 __self__.value.pointers();
    @:keep
    @:tdfield
    public dynamic function hasName():Bool return @:_0 __self__.value.hasName();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.internal.abi.Abi_kind.Kind return @:_0 __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.abi.Abi_type_pointer.Type_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
