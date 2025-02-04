package stdgo._internal.flag;
class T_boolFuncValue_asInterface {
    @:keep
    @:tdfield
    public dynamic function isBoolFlag():Bool return @:_0 __self__.value.isBoolFlag();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return @:_0 __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.flag.Flag_t_boolfuncvaluepointer.T_boolFuncValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
