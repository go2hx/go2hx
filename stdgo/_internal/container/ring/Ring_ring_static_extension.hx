package stdgo._internal.container.ring;
@:keep @:allow(stdgo._internal.container.ring.Ring.Ring_asInterface) class Ring_static_extension {
    @:keep
    @:tdfield
    static public function do_( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _f:stdgo.AnyInterface -> Void):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
            _f((@:checkr _r ?? throw "null pointer dereference").value);
            {
                var _p = @:check2r _r.next();
                while (_p != (_r)) {
                    _f((@:checkr _p ?? throw "null pointer dereference").value);
                    _p = (@:checkr _p ?? throw "null pointer dereference")._next;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        var _n = (0 : stdgo.GoInt);
        if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
            _n = (1 : stdgo.GoInt);
            {
                var _p = @:check2r _r.next();
                while (_p != (_r)) {
                    _n++;
                    _p = (@:checkr _p ?? throw "null pointer dereference")._next;
                };
            };
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function unlink( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return null;
        };
        return @:check2r _r.link(@:check2r _r.move((_n + (1 : stdgo.GoInt) : stdgo.GoInt)));
    }
    @:keep
    @:tdfield
    static public function link( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _s:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        var _n = @:check2r _r.next();
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            var _p = @:check2r _s.prev();
            (@:checkr _r ?? throw "null pointer dereference")._next = _s;
            (@:checkr _s ?? throw "null pointer dereference")._prev = _r;
            (@:checkr _n ?? throw "null pointer dereference")._prev = _p;
            (@:checkr _p ?? throw "null pointer dereference")._next = _n;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function move( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._next == null || ((@:checkr _r ?? throw "null pointer dereference")._next : Dynamic).__nil__)) {
            return @:check2r _r._init();
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            while ((_n < (0 : stdgo.GoInt) : Bool)) {
                _r = (@:checkr _r ?? throw "null pointer dereference")._prev;
                _n++;
            };
        } else if ((_n > (0 : stdgo.GoInt) : Bool)) {
            while ((_n > (0 : stdgo.GoInt) : Bool)) {
                _r = (@:checkr _r ?? throw "null pointer dereference")._next;
                _n--;
            };
        };
        return _r;
    }
    @:keep
    @:tdfield
    static public function prev( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._next == null || ((@:checkr _r ?? throw "null pointer dereference")._next : Dynamic).__nil__)) {
            return @:check2r _r._init();
        };
        return (@:checkr _r ?? throw "null pointer dereference")._prev;
    }
    @:keep
    @:tdfield
    static public function next( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._next == null || ((@:checkr _r ?? throw "null pointer dereference")._next : Dynamic).__nil__)) {
            return @:check2r _r._init();
        };
        return (@:checkr _r ?? throw "null pointer dereference")._next;
    }
    @:keep
    @:tdfield
    static public function _init( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._next = _r;
        (@:checkr _r ?? throw "null pointer dereference")._prev = _r;
        return _r;
    }
}
