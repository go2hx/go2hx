package stdgo._internal.crypto.internal.nistec;
class T_p521Table_asInterface {
    @:keep
    @:tdfield
    public dynamic function select(_p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _n:stdgo.GoUInt8):Void @:_0 __self__.value.select(_p, _n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.nistec.Nistec_T_p521TablePointer.T_p521TablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
