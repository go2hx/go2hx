package stdgo.container.ring;
@:structInit @:using(stdgo.container.ring.Ring.Ring_static_extension) abstract Ring_(stdgo._internal.container.ring.Ring_Ring.Ring) from stdgo._internal.container.ring.Ring_Ring.Ring to stdgo._internal.container.ring.Ring_Ring.Ring {
    public var _next(get, set) : Ring_;
    function get__next():Ring_ return this._next;
    function set__next(v:Ring_):Ring_ {
        this._next = (v : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return v;
    }
    public var _prev(get, set) : Ring_;
    function get__prev():Ring_ return this._prev;
    function set__prev(v:Ring_):Ring_ {
        this._prev = (v : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_next:Ring_, ?_prev:Ring_, ?value:stdgo.AnyInterface) this = new stdgo._internal.container.ring.Ring_Ring.Ring((_next : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>), (_prev : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>), (value : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
