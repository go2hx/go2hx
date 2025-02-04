package stdgo._internal.expvar;
class Float__asInterface {
    @:keep
    @:tdfield
    public dynamic function set(_value:stdgo.GoFloat64):Void @:_0 __self__.value.set(_value);
    @:keep
    @:tdfield
    public dynamic function add(_delta:stdgo.GoFloat64):Void @:_0 __self__.value.add(_delta);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function value():stdgo.GoFloat64 return @:_0 __self__.value.value();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.expvar.Expvar_float_pointer.Float_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
