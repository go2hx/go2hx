package stdgo._internal.container.ring;
@:keep @:allow(stdgo._internal.container.ring.Ring.Ring_asInterface) class Ring_static_extension {
    @:keep
    static public function do_( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>, _f:stdgo.AnyInterface -> Void):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
            _f(_r.value);
            {
                var _p = _r.next();
                while (_p != (_r)) {
                    _f(_p.value);
                    _p = _p._next;
                };
            };
        };
    }
    @:keep
    static public function len( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        var _n = (0 : stdgo.GoInt);
        if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
            _n = (1 : stdgo.GoInt);
            {
                var _p = _r.next();
                while (_p != (_r)) {
                    _n++;
                    _p = _p._next;
                };
            };
        };
        return _n;
    }
    @:keep
    static public function unlink( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return null;
        };
        return _r.link(_r.move((_n + (1 : stdgo.GoInt) : stdgo.GoInt)));
    }
    @:keep
    static public function link( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>, _s:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        var _n = _r.next();
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            var _p = _s.prev();
            _r._next = _s;
            _s._prev = _r;
            _n._prev = _p;
            _p._next = _n;
        };
        return _n;
    }
    @:keep
    static public function move( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        if ((_r._next == null || (_r._next : Dynamic).__nil__)) {
            return _r._init();
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            while ((_n < (0 : stdgo.GoInt) : Bool)) {
                _r = _r._prev;
                _n++;
            };
        } else if ((_n > (0 : stdgo.GoInt) : Bool)) {
            while ((_n > (0 : stdgo.GoInt) : Bool)) {
                _r = _r._next;
                _n--;
            };
        };
        return _r;
    }
    @:keep
    static public function prev( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        if ((_r._next == null || (_r._next : Dynamic).__nil__)) {
            return _r._init();
        };
        return _r._prev;
    }
    @:keep
    static public function next( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        if ((_r._next == null || (_r._next : Dynamic).__nil__)) {
            return _r._init();
        };
        return _r._next;
    }
    @:keep
    static public function _init( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> = _r;
        _r._next = _r;
        _r._prev = _r;
        return _r;
    }
}
