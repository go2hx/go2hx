package stdgo._internal.sync.atomic_;
class Value_asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.AnyInterface):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.AnyInterface return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.atomic_.Atomic__Value.Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}