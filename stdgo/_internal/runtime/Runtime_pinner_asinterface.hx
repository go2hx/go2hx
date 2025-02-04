package stdgo._internal.runtime;
class Pinner_asInterface {
    @:keep
    @:tdfield
    public dynamic function unpin():Void @:_0 __self__.value.unpin();
    @:keep
    @:tdfield
    public dynamic function pin(_pointer:stdgo.AnyInterface):Void @:_0 __self__.value.pin(_pointer);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _unpin():Void @:_0 __self__.value._unpin();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_pinnerpointer.PinnerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
