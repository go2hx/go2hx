package stdgo._internal.sync.atomic_;
class Bool__asInterface {
    @:keep
    @:tdfield
    public dynamic function compareAndSwap(_old:Bool, _new_:Bool):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    @:tdfield
    public dynamic function swap(_new_:Bool):Bool return @:_0 __self__.value.swap(_new_);
    @:keep
    @:tdfield
    public dynamic function store(_val:Bool):Void @:_0 __self__.value.store(_val);
    @:keep
    @:tdfield
    public dynamic function load():Bool return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.atomic_.Atomic__bool_pointer.Bool_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
