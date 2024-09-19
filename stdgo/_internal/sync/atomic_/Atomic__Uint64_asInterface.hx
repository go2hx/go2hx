package stdgo._internal.sync.atomic_;
class Uint64_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value.add(_delta);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.GoUInt64):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.GoUInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
