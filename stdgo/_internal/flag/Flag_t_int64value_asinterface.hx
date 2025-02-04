package stdgo._internal.flag;
class T_int64Value_asInterface {
    @:keep
    @:pointer
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.string();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.get();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return @:_0 __self__.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.flag.Flag_t_int64valuepointer.T_int64ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
