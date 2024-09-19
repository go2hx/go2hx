package stdgo._internal.sync.atomic_;
class Pointer__asInterface<T_> {
    @:keep
    public var compareAndSwap : (_old:stdgo.Ref<Dynamic>, _new:stdgo.Ref<Dynamic>) -> Bool;
    @:keep
    public var swap : (_new:stdgo.Ref<Dynamic>) -> stdgo.Ref<Dynamic>;
    @:keep
    public var store : (_val:stdgo.Ref<Dynamic>) -> Void;
    @:keep
    public var load : () -> stdgo.Ref<Dynamic>;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<T_>>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
