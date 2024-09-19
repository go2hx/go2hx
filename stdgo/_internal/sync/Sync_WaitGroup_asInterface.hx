package stdgo._internal.sync;
class WaitGroup_asInterface {
    @:keep
    public dynamic function wait_():Void __self__.value.wait_();
    @:keep
    public dynamic function done():Void __self__.value.done();
    @:keep
    public dynamic function add(_delta:stdgo.GoInt):Void __self__.value.add(_delta);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
