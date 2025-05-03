package stdgo._internal.container.ring;
@:keep @:allow(stdgo._internal.container.ring.Ring.Ring_asInterface) class Ring_static_extension {
    @:keep
    @:tdfield
    static public function do_( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _f:stdgo.AnyInterface -> Void):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L130"
        if (({
            final value = _r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L131"
            _f((@:checkr _r ?? throw "null pointer dereference").value);
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L132"
            {
                var _p = _r.next();
                while (_p != (_r)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L133"
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
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L118"
        if (({
            final value = _r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _n = (1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L120"
            {
                var _p = _r.next();
                while (_p != (_r)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L121"
                    _n++;
                    _p = (@:checkr _p ?? throw "null pointer dereference")._next;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L124"
        return _n;
    }
    @:keep
    @:tdfield
    static public function unlink( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L108"
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L109"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L111"
        return _r.link(_r.move((_n + (1 : stdgo.GoInt) : stdgo.GoInt)));
    }
    @:keep
    @:tdfield
    static public function link( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _s:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        var _n = _r.next();
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L92"
        if (({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _p = _s.prev();
            (@:checkr _r ?? throw "null pointer dereference")._next = _s;
            (@:checkr _s ?? throw "null pointer dereference")._prev = _r;
            (@:checkr _n ?? throw "null pointer dereference")._prev = _p;
            (@:checkr _p ?? throw "null pointer dereference")._next = _n;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L101"
        return _n;
    }
    @:keep
    @:tdfield
    static public function move( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L43"
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._next;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L44"
            return _r._init();
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L46"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L48"
            while ((_n < (0 : stdgo.GoInt) : Bool)) {
                _r = (@:checkr _r ?? throw "null pointer dereference")._prev;
                _n++;
            };
        } else if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L52"
            while ((_n > (0 : stdgo.GoInt) : Bool)) {
                _r = (@:checkr _r ?? throw "null pointer dereference")._next;
                _n--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L56"
        return _r;
    }
    @:keep
    @:tdfield
    static public function prev( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L34"
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._next;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L35"
            return _r._init();
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L37"
        return (@:checkr _r ?? throw "null pointer dereference")._prev;
    }
    @:keep
    @:tdfield
    static public function next( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L26"
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._next;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L27"
            return _r._init();
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L29"
        return (@:checkr _r ?? throw "null pointer dereference")._next;
    }
    @:keep
    @:tdfield
    static public function _init( _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        @:recv var _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._next = _r;
        (@:checkr _r ?? throw "null pointer dereference")._prev = _r;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring.go#L21"
        return _r;
    }
}
