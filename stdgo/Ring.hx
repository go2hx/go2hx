package stdgo;
@:structInit @:using(stdgo.container.ring.Ring.Ring_static_extension) abstract Ring_(stdgo._internal.container.ring.Ring_ring.Ring) from stdgo._internal.container.ring.Ring_ring.Ring to stdgo._internal.container.ring.Ring_ring.Ring {
    public var _next(get, set) : Ring_;
    function get__next():Ring_ return this._next;
    function set__next(v:Ring_):Ring_ {
        this._next = (v : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return v;
    }
    public var _prev(get, set) : Ring_;
    function get__prev():Ring_ return this._prev;
    function set__prev(v:Ring_):Ring_ {
        this._prev = (v : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_next:Ring_, ?_prev:Ring_, ?value:stdgo.AnyInterface) this = new stdgo._internal.container.ring.Ring_ring.Ring((_next : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (_prev : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (value : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef RingPointer = stdgo._internal.container.ring.Ring_ringpointer.RingPointer;
class Ring_static_extension {
    static public function do_(_r:Ring_, _f:stdgo.AnyInterface -> Void):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        final _f = _f;
        stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.do_(_r, _f);
    }
    static public function len(_r:Ring_):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.len(_r);
    }
    static public function unlink(_r:Ring_, _n:StdTypes.Int):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.unlink(_r, _n);
    }
    static public function link(_r:Ring_, _s:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        final _s = (_s : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.link(_r, _s);
    }
    static public function move(_r:Ring_, _n:StdTypes.Int):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.move(_r, _n);
    }
    static public function prev(_r:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.prev(_r);
    }
    static public function next(_r:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension.next(_r);
    }
    static public function _init(_r:Ring_):Ring_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        return stdgo._internal.container.ring.Ring_ring_static_extension.Ring_static_extension._init(_r);
    }
}
/**
    * Package ring implements operations on circular lists.
**/
class Ring {
    /**
        * New creates a ring of n elements.
    **/
    static public inline function new_(_n:StdTypes.Int):Ring_ {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.container.ring.Ring_new_.new_(_n);
    }
}
