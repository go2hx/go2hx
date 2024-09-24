package stdgo.container.ring;
@:structInit @:using(stdgo.container.ring.Ring.Ring_static_extension) abstract Ring_(stdgo._internal.container.ring.Ring_Ring.Ring) from stdgo._internal.container.ring.Ring_Ring.Ring to stdgo._internal.container.ring.Ring_Ring.Ring {
    public var _next(get, set) : Ring_;
    function get__next():Ring_ return this._next;
    function set__next(v:Ring_):Ring_ {
        this._next = v;
        return v;
    }
    public var _prev(get, set) : Ring_;
    function get__prev():Ring_ return this._prev;
    function set__prev(v:Ring_):Ring_ {
        this._prev = v;
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = v;
        return v;
    }
    public function new(?_next:Ring_, ?_prev:Ring_, ?value:stdgo.AnyInterface) this = new stdgo._internal.container.ring.Ring_Ring.Ring(_next, _prev, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Ring_static_extension {
    static public function do_(_r:Ring_, _f:stdgo.AnyInterface -> Void):Void {
        final _f = _f;
        stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.do_(_r, _f);
    }
    static public function len(_r:Ring_):StdTypes.Int {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.len(_r);
    }
    static public function unlink(_r:Ring_, _n:StdTypes.Int):Ring_ {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.unlink(_r, _n);
    }
    static public function link(_r:Ring_, _s:Ring_):Ring_ {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.link(_r, _s);
    }
    static public function move(_r:Ring_, _n:StdTypes.Int):Ring_ {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.move(_r, _n);
    }
    static public function prev(_r:Ring_):Ring_ {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.prev(_r);
    }
    static public function next(_r:Ring_):Ring_ {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension.next(_r);
    }
    static public function _init(_r:Ring_):Ring_ {
        return stdgo._internal.container.ring.Ring_Ring_static_extension.Ring_static_extension._init(_r);
    }
}
/**
    Package ring implements operations on circular lists.
**/
class Ring {
    /**
        New creates a ring of n elements.
    **/
    static public function new_(_n:StdTypes.Int):Ring_ {
        return stdgo._internal.container.ring.Ring_new_.new_(_n);
    }
}
