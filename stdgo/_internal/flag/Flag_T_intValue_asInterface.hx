package stdgo._internal.flag;
class T_intValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_intValue.T_intValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
