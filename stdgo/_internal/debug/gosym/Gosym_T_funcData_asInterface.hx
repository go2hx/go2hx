package stdgo._internal.debug.gosym;
class T_funcData_asInterface {
    @:keep
    public dynamic function _field(_n:stdgo.GoUInt32):stdgo.GoUInt32 return __self__.value._field(_n);
    @:keep
    public dynamic function _cuOffset():stdgo.GoUInt32 return __self__.value._cuOffset();
    @:keep
    public dynamic function _pcln():stdgo.GoUInt32 return __self__.value._pcln();
    @:keep
    public dynamic function _pcfile():stdgo.GoUInt32 return __self__.value._pcfile();
    @:keep
    public dynamic function _deferreturn():stdgo.GoUInt32 return __self__.value._deferreturn();
    @:keep
    public dynamic function _nameOff():stdgo.GoUInt32 return __self__.value._nameOff();
    @:keep
    public dynamic function _entryPC():stdgo.GoUInt64 return __self__.value._entryPC();
    @:keep
    public dynamic function isZero():Bool return __self__.value.isZero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
