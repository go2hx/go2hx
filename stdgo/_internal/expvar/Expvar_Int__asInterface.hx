package stdgo._internal.expvar;
class Int__asInterface {
    @:keep
    public dynamic function set(_value:stdgo.GoInt64):Void __self__.value.set(_value);
    @:keep
    public dynamic function add(_delta:stdgo.GoInt64):Void __self__.value.add(_delta);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function value():stdgo.GoInt64 return __self__.value.value();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.expvar.Expvar_Int_.Int_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
