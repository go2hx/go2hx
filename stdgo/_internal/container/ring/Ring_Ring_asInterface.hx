package stdgo._internal.container.ring;
class Ring_asInterface {
    @:keep
    public dynamic function do_(_f:stdgo.AnyInterface -> Void):Void __self__.value.do_(_f);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function unlink(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> return __self__.value.unlink(_n);
    @:keep
    public dynamic function link(_s:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> return __self__.value.link(_s);
    @:keep
    public dynamic function move(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> return __self__.value.move(_n);
    @:keep
    public dynamic function prev():stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> return __self__.value.prev();
    @:keep
    public dynamic function next():stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> return __self__.value.next();
    @:keep
    public dynamic function _init():stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> return __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.container.ring.Ring_Ring.Ring>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
