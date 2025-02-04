package stdgo._internal.container.ring;
class Ring_asInterface {
    @:keep
    @:tdfield
    public dynamic function do_(_f:stdgo.AnyInterface -> Void):Void @:_0 __self__.value.do_(_f);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function unlink(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return @:_0 __self__.value.unlink(_n);
    @:keep
    @:tdfield
    public dynamic function link(_s:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return @:_0 __self__.value.link(_s);
    @:keep
    @:tdfield
    public dynamic function move(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return @:_0 __self__.value.move(_n);
    @:keep
    @:tdfield
    public dynamic function prev():stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return @:_0 __self__.value.prev();
    @:keep
    @:tdfield
    public dynamic function next():stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return @:_0 __self__.value.next();
    @:keep
    @:tdfield
    public dynamic function _init():stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> return @:_0 __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.container.ring.Ring_ringpointer.RingPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
