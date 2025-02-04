package stdgo._internal.internal.bisect;
class T_dedup_asInterface {
    @:keep
    @:tdfield
    public dynamic function _seenLossy(_h:stdgo.GoUInt64):Bool return @:_0 __self__.value._seenLossy(_h);
    @:keep
    @:tdfield
    public dynamic function _seen(_h:stdgo.GoUInt64):Bool return @:_0 __self__.value._seen(_h);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.bisect.Bisect_t_deduppointer.T_dedupPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
