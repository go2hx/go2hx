package stdgo._internal.debug.gosym;
class T_funcData_asInterface {
    @:keep
    @:tdfield
    public dynamic function _field(_n:stdgo.GoUInt32):stdgo.GoUInt32 return @:_0 __self__.value._field(_n);
    @:keep
    @:tdfield
    public dynamic function _cuOffset():stdgo.GoUInt32 return @:_0 __self__.value._cuOffset();
    @:keep
    @:tdfield
    public dynamic function _pcln():stdgo.GoUInt32 return @:_0 __self__.value._pcln();
    @:keep
    @:tdfield
    public dynamic function _pcfile():stdgo.GoUInt32 return @:_0 __self__.value._pcfile();
    @:keep
    @:tdfield
    public dynamic function _deferreturn():stdgo.GoUInt32 return @:_0 __self__.value._deferreturn();
    @:keep
    @:tdfield
    public dynamic function _nameOff():stdgo.GoUInt32 return @:_0 __self__.value._nameOff();
    @:keep
    @:tdfield
    public dynamic function _entryPC():stdgo.GoUInt64 return @:_0 __self__.value._entryPC();
    @:keep
    @:tdfield
    public dynamic function isZero():Bool return @:_0 __self__.value.isZero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.gosym.Gosym_t_funcdatapointer.T_funcDataPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
