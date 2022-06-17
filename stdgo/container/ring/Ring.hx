package stdgo.container.ring;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit @:using(stdgo.container.ring.Ring.Ring_static_extension) class Ring {
    public var _next : Ref<Ring> = null;
    public var _prev : Ref<Ring> = null;
    public var value : AnyInterface = ((null : AnyInterface));
    public function new(?_next:Ref<Ring>, ?_prev:Ref<Ring>, ?value:AnyInterface) {
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
        if (value != null) this.value = value;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Ring(_next, _prev, value);
    }
}
/**
    // New creates a ring of n elements.
**/
function new_(_n:GoInt):Ring {
        if (_n <= ((0 : GoInt))) {
            return null;
        };
        var _r = new Ring();
        var _p = _r;
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _p._next = (({ _prev : _p, _next : null, value : ((null : AnyInterface)) } : Ring));
                _p = _p._next;
            });
        };
        _p._next = _r;
        _r._prev = _p;
        return _r;
    }
@:keep class Ring_static_extension {
    /**
        // Do calls function f on each element of the ring, in forward order.
        // The behavior of Do is undefined if f changes *r.
    **/
    @:keep
    public static function do_( _r:Ring, _f:AnyInterface -> Void):Void {
        if (_r != null) {
            _f(Go.toInterface(_r.value));
            {
                var _p = _r.next();
                Go.cfor(_p != _r, _p = _p._next, {
                    _f(Go.toInterface(_p.value));
                });
            };
        };
    }
    /**
        // Len computes the number of elements in ring r.
        // It executes in time proportional to the number of elements.
        //
    **/
    @:keep
    public static function len( _r:Ring):GoInt {
        var _n:GoInt = ((0 : GoInt));
        if (_r != null) {
            _n = ((1 : GoInt));
            {
                var _p = _r.next();
                Go.cfor(_p != _r, _p = _p._next, {
                    _n++;
                });
            };
        };
        return _n;
    }
    /**
        // Unlink removes n % r.Len() elements from the ring r, starting
        // at r.Next(). If n % r.Len() == 0, r remains unchanged.
        // The result is the removed subring. r must not be empty.
        //
    **/
    @:keep
    public static function unlink( _r:Ring, _n:GoInt):Ring {
        if (_n <= ((0 : GoInt))) {
            return null;
        };
        return _r.link(_r.move(_n + ((1 : GoInt))));
    }
    /**
        // Link connects ring r with ring s such that r.Next()
        // becomes s and returns the original value for r.Next().
        // r must not be empty.
        //
        // If r and s point to the same ring, linking
        // them removes the elements between r and s from the ring.
        // The removed elements form a subring and the result is a
        // reference to that subring (if no elements were removed,
        // the result is still the original value for r.Next(),
        // and not nil).
        //
        // If r and s point to different rings, linking
        // them creates a single ring with the elements of s inserted
        // after r. The result points to the element following the
        // last element of s after insertion.
        //
    **/
    @:keep
    public static function link( _r:Ring, _s:Ring):Ring {
        var _n = _r.next();
        if (_s != null) {
            var _p = _s.prev();
            _r._next = _s;
            _s._prev = _r;
            _n._prev = _p;
            _p._next = _n;
        };
        return _n;
    }
    /**
        // Move moves n % r.Len() elements backward (n < 0) or forward (n >= 0)
        // in the ring and returns that ring element. r must not be empty.
        //
    **/
    @:keep
    public static function move( _r:Ring, _n:GoInt):Ring {
        if (_r._next == null) {
            return _r._init();
        };
        if (_n < ((0 : GoInt))) {
            Go.cfor(_n < ((0 : GoInt)), _n++, {
                _r = _r._prev;
            });
        } else if (_n > ((0 : GoInt))) {
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r = _r._next;
            });
        };
        return _r;
    }
    /**
        // Prev returns the previous ring element. r must not be empty.
    **/
    @:keep
    public static function prev( _r:Ring):Ring {
        if (_r._next == null) {
            return _r._init();
        };
        return _r._prev;
    }
    /**
        // Next returns the next ring element. r must not be empty.
    **/
    @:keep
    public static function next( _r:Ring):Ring {
        if (_r._next == null) {
            return _r._init();
        };
        return _r._next;
    }
    @:keep
    public static function _init( _r:Ring):Ring {
        _r._next = _r;
        _r._prev = _r;
        return _r;
    }
}
class Ring_wrapper {
    /**
        // Do calls function f on each element of the ring, in forward order.
        // The behavior of Do is undefined if f changes *r.
    **/
    @:keep
    public var do_ : (AnyInterface -> Void) -> Void = null;
    /**
        // Len computes the number of elements in ring r.
        // It executes in time proportional to the number of elements.
        //
    **/
    @:keep
    public var len : () -> GoInt = null;
    /**
        // Unlink removes n % r.Len() elements from the ring r, starting
        // at r.Next(). If n % r.Len() == 0, r remains unchanged.
        // The result is the removed subring. r must not be empty.
        //
    **/
    @:keep
    public var unlink : GoInt -> Ring = null;
    /**
        // Link connects ring r with ring s such that r.Next()
        // becomes s and returns the original value for r.Next().
        // r must not be empty.
        //
        // If r and s point to the same ring, linking
        // them removes the elements between r and s from the ring.
        // The removed elements form a subring and the result is a
        // reference to that subring (if no elements were removed,
        // the result is still the original value for r.Next(),
        // and not nil).
        //
        // If r and s point to different rings, linking
        // them creates a single ring with the elements of s inserted
        // after r. The result points to the element following the
        // last element of s after insertion.
        //
    **/
    @:keep
    public var link : Ring -> Ring = null;
    /**
        // Move moves n % r.Len() elements backward (n < 0) or forward (n >= 0)
        // in the ring and returns that ring element. r must not be empty.
        //
    **/
    @:keep
    public var move : GoInt -> Ring = null;
    /**
        // Prev returns the previous ring element. r must not be empty.
    **/
    @:keep
    public var prev : () -> Ring = null;
    /**
        // Next returns the next ring element. r must not be empty.
    **/
    @:keep
    public var next : () -> Ring = null;
    @:keep
    public var _init : () -> Ring = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Ring;
}
