package stdgo._internal.reflect;
class T_rtype_asInterface {
    @:keep
    @:tdfield
    public dynamic function comparable_():Bool return @:_0 __self__.value.comparable_();
    @:keep
    @:tdfield
    public dynamic function convertibleTo(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool return @:_0 __self__.value.convertibleTo(_u);
    @:keep
    @:tdfield
    public dynamic function assignableTo(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool return @:_0 __self__.value.assignableTo(_u);
    @:keep
    @:tdfield
    public dynamic function implements_(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool return @:_0 __self__.value.implements_(_u);
    @:keep
    @:tdfield
    public dynamic function isVariadic():Bool return @:_0 __self__.value.isVariadic();
    @:keep
    @:tdfield
    public dynamic function out(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_ return @:_0 __self__.value.out(_i);
    @:keep
    @:tdfield
    public dynamic function numOut():stdgo.GoInt return @:_0 __self__.value.numOut();
    @:keep
    @:tdfield
    public dynamic function numIn():stdgo.GoInt return @:_0 __self__.value.numIn();
    @:keep
    @:tdfield
    public dynamic function in_(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_ return @:_0 __self__.value.in_(_i);
    @:keep
    @:tdfield
    public dynamic function numField():stdgo.GoInt return @:_0 __self__.value.numField();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function key():stdgo._internal.reflect.Reflect_type_.Type_ return @:_0 __self__.value.key();
    @:keep
    @:tdfield
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return @:_0 __self__.value.fieldByNameFunc(_match);
    @:keep
    @:tdfield
    public dynamic function fieldByName(_name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return @:_0 __self__.value.fieldByName(_name);
    @:keep
    @:tdfield
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_structfield.StructField return @:_0 __self__.value.fieldByIndex(_index);
    @:keep
    @:tdfield
    public dynamic function field(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_structfield.StructField return @:_0 __self__.value.field(_i);
    @:keep
    @:tdfield
    public dynamic function elem():stdgo._internal.reflect.Reflect_type_.Type_ return @:_0 __self__.value.elem();
    @:keep
    @:tdfield
    public dynamic function chanDir():stdgo._internal.reflect.Reflect_chandir.ChanDir return @:_0 __self__.value.chanDir();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function pkgPath():stdgo.GoString return @:_0 __self__.value.pkgPath();
    @:keep
    @:tdfield
    public dynamic function methodByName(_name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_method.Method; var _1 : Bool; } return @:_0 __self__.value.methodByName(_name);
    @:keep
    @:tdfield
    public dynamic function method(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_method.Method return @:_0 __self__.value.method(_i);
    @:keep
    @:tdfield
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.reflect.Reflect_kind.Kind return @:_0 __self__.value.kind();
    @:keep
    @:tdfield
    public dynamic function fieldAlign():stdgo.GoInt return @:_0 __self__.value.fieldAlign();
    @:keep
    @:tdfield
    public dynamic function align():stdgo.GoInt return @:_0 __self__.value.align();
    @:keep
    @:tdfield
    public dynamic function bits():stdgo.GoInt return @:_0 __self__.value.bits();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.reflect.Reflect_t_rtypepointer.T_rtypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
