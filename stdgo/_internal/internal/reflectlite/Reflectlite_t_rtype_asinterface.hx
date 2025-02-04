package stdgo._internal.internal.reflectlite;
class T_rtype_asInterface {
    @:keep
    @:tdfield
    public dynamic function comparable_():Bool return @:_0 __self__.value.comparable_();
    @:keep
    @:tdfield
    public dynamic function assignableTo(_u:stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_):Bool return @:_0 __self__.value.assignableTo(_u);
    @:keep
    @:tdfield
    public dynamic function implements_(_u:stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_):Bool return @:_0 __self__.value.implements_(_u);
    @:keep
    @:tdfield
    public dynamic function out(_i:stdgo.GoInt):stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:_0 __self__.value.out(_i);
    @:keep
    @:tdfield
    public dynamic function numOut():stdgo.GoInt return @:_0 __self__.value.numOut();
    @:keep
    @:tdfield
    public dynamic function numIn():stdgo.GoInt return @:_0 __self__.value.numIn();
    @:keep
    @:tdfield
    public dynamic function numField():stdgo.GoInt return @:_0 __self__.value.numField();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function key():stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:_0 __self__.value.key();
    @:keep
    @:tdfield
    public dynamic function in_(_i:stdgo.GoInt):stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:_0 __self__.value.in_(_i);
    @:keep
    @:tdfield
    public dynamic function elem():stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:_0 __self__.value.elem();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function pkgPath():stdgo.GoString return @:_0 __self__.value.pkgPath();
    @:keep
    @:tdfield
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:_0 __self__.value.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:_0 __self__.value.structType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pointers():Bool return @:_0 __self__.value.pointers();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:_0 __self__.value.mapType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function kind():stdgo._internal.internal.abi.Abi_kind.Kind return @:_0 __self__.value.kind();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isDirectIface():Bool return @:_0 __self__.value.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:_0 __self__.value.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function ifaceIndir():Bool return @:_0 __self__.value.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function hasName():Bool return @:_0 __self__.value.hasName();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function gcSlice(_0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType> return @:_0 __self__.value.funcType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fieldAlign():stdgo.GoInt return @:_0 __self__.value.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:_0 __self__.value.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:_0 __self__.value.common();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:_0 __self__.value.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:_0 __self__.value.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function align():stdgo.GoInt return @:_0 __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.reflectlite.Reflectlite_t_rtypepointer.T_rtypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
