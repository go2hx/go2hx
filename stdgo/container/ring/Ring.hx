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
@:structInit class Ring {
    public function do_(_f:AnyInterface -> Void):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_r != null && !_r.isNil())) {
            _f(Go.toInterface(_r.value.value));
            {
                var _p:Pointer<Ring> = _r.value.next();
                Go.cfor(_p != _r, _p = _p.value._next, {
                    _f(Go.toInterface(_p.value.value));
                });
            };
        };
    }
    public function len():GoInt {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt));
        if ((_r != null && !_r.isNil())) {
            _n = ((1 : GoInt));
            {
                var _p:Pointer<Ring> = _r.value.next();
                Go.cfor(_p != _r, _p = _p.value._next, {
                    _n++;
                });
            };
        };
        return _n;
    }
    public function unlink(_n:GoInt):Pointer<Ring> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n <= ((0 : GoInt))) {
            return new Pointer<Ring>().nil();
        };
        return _r.value.link(_r.value.move(_n + ((1 : GoInt))));
    }
    public function link(_s:Pointer<Ring>):Pointer<Ring> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:Pointer<Ring> = _r.value.next();
        if ((_s != null && !_s.isNil())) {
            var _p:Pointer<Ring> = _s.value.prev();
            _r.value._next = _s;
            _s.value._prev = _r;
            _n.value._prev = _p;
            _p.value._next = _n;
        };
        return _n;
    }
    public function move(_n:GoInt):Pointer<Ring> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_r.value._next == null || _r.value._next.isNil())) {
            return _r.value._init();
        };
        if (_n < ((0 : GoInt))) {
            Go.cfor(_n < ((0 : GoInt)), _n++, {
                _r = _r.value._prev;
            });
        } else if (_n > ((0 : GoInt))) {
            Go.cfor(_n > ((0 : GoInt)), _n--, {
                _r = _r.value._next;
            });
        };
        return _r;
    }
    public function prev():Pointer<Ring> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_r.value._next == null || _r.value._next.isNil())) {
            return _r.value._init();
        };
        return _r.value._prev;
    }
    public function next():Pointer<Ring> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_r.value._next == null || _r.value._next.isNil())) {
            return _r.value._init();
        };
        return _r.value._next;
    }
    public function _init():Pointer<Ring> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._next = _r;
        _r.value._prev = _r;
        return _r;
    }
    public var _next : Pointer<Ring> = new Pointer<Ring>().nil();
    public var _prev : Pointer<Ring> = new Pointer<Ring>().nil();
    public var value : AnyInterface = ((null : AnyInterface));
    public function new(?_next:Pointer<Ring>, ?_prev:Pointer<Ring>, ?value:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_next) + " " + Go.string(_prev) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Ring(_next, _prev, value);
    }
    public function __set__(__tmp__) {
        this._next = __tmp__._next;
        this._prev = __tmp__._prev;
        this.value = __tmp__.value;
        return this;
    }
}
/**
    // New creates a ring of n elements.
**/
function new_(_n:GoInt):Pointer<Ring> {
        if (_n <= ((0 : GoInt))) {
            return new Pointer<Ring>().nil();
        };
        var _r:Pointer<Ring> = Go.pointer(new Ring());
        var _p:Pointer<Ring> = _r;
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _p.value._next = Go.pointer((({ _prev : _p, _next : new Pointer<Ring>().nil(), value : ((null : AnyInterface)) } : Ring)));
                _p = _p.value._next;
            });
        };
        _p.value._next = _r;
        _r.value._prev = _p;
        return _r;
    }
class Ring_extension_fields {
    public function _init(__tmp__):Pointer<Ring> return __tmp__._init();
    public function next(__tmp__):Pointer<Ring> return __tmp__.next();
    public function prev(__tmp__):Pointer<Ring> return __tmp__.prev();
    public function move(__tmp__, _n:GoInt):Pointer<Ring> return __tmp__.move(_n);
    public function link(__tmp__, _s:Pointer<Ring>):Pointer<Ring> return __tmp__.link(_s);
    public function unlink(__tmp__, _n:GoInt):Pointer<Ring> return __tmp__.unlink(_n);
    public function len(__tmp__):GoInt return __tmp__.len();
    public function do_(__tmp__, _f:AnyInterface -> Void):Void __tmp__.do_(_f);
}
