package stdgo._internal.container.ring;
@:structInit @:using(stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension) class Ring {
    public var _next : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
    public var _prev : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
    public var value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_next:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, ?_prev:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, ?value:stdgo.AnyInterface) {
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ring(_next, _prev, value);
    }
}
