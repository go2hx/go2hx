package stdgo._internal.sync.atomic_;
class Int64__asInterface {
    @:keep
    @:tdfield
    public dynamic function add(_delta:stdgo.GoInt64):stdgo.GoInt64 return @:_0 __self__.value.add(_delta);
    @:keep
    @:tdfield
    public dynamic function compareAndSwap(_old:stdgo.GoInt64, _new_:stdgo.GoInt64):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    @:tdfield
    public dynamic function swap(_new_:stdgo.GoInt64):stdgo.GoInt64 return @:_0 __self__.value.swap(_new_);
    @:keep
    @:tdfield
    public dynamic function store(_val:stdgo.GoInt64):Void @:_0 __self__.value.store(_val);
    @:keep
    @:tdfield
    public dynamic function load():stdgo.GoInt64 return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.atomic_.Atomic__int64_pointer.Int64_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
