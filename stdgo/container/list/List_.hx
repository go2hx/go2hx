package stdgo.container.list;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class Element {
    public function prev():Pointer<Element> {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _p:Pointer<Element> = _e.value._prev;
            if ((_e.value._list != null && !_e.value._list.isNil()) && _p != Go.pointer(_e.value._list.value._root)) {
                return _p;
            };
        };
        return new Pointer<Element>().nil();
    }
    public function next():Pointer<Element> {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _p:Pointer<Element> = _e.value._next;
            if ((_e.value._list != null && !_e.value._list.isNil()) && _p != Go.pointer(_e.value._list.value._root)) {
                return _p;
            };
        };
        return new Pointer<Element>().nil();
    }
    public var _next : Pointer<Element> = new Pointer<Element>().nil();
    public var _prev : Pointer<Element> = new Pointer<Element>().nil();
    public var _list : Pointer<List_> = new Pointer<List_>().nil();
    public var value : AnyInterface = ((null : AnyInterface));
    public function new(?_next:Pointer<Element>, ?_prev:Pointer<Element>, ?_list:Pointer<List_>, ?value:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_next) + " " + Go.string(_prev) + " " + Go.string(_list) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Element(_next, _prev, _list, value);
    }
    public function __set__(__tmp__) {
        this._next = __tmp__._next;
        this._prev = __tmp__._prev;
        this._list = __tmp__._list;
        this.value = __tmp__.value;
        return this;
    }
}
@:structInit class List_ {
    public function pushFrontList(_other:Pointer<List_>):Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _l.value._lazyInit();
        {
            var _i:GoInt = _other.value.len(), _e:Pointer<Element> = _other.value.back();
            Go.cfor(_i > ((0 : GoInt)), {
                final __tmp__0 = _i - ((1 : GoInt));
                final __tmp__1 = _e.value.prev();
                _i = __tmp__0;
                _e = __tmp__1;
            }, {
                _l.value._insertValue(Go.toInterface(_e.value.value), Go.pointer(_l.value._root));
            });
        };
    }
    public function pushBackList(_other:Pointer<List_>):Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _l.value._lazyInit();
        {
            var _i:GoInt = _other.value.len(), _e:Pointer<Element> = _other.value.front();
            Go.cfor(_i > ((0 : GoInt)), {
                final __tmp__0 = _i - ((1 : GoInt));
                final __tmp__1 = _e.value.next();
                _i = __tmp__0;
                _e = __tmp__1;
            }, {
                _l.value._insertValue(Go.toInterface(_e.value.value), _l.value._root._prev);
            });
        };
    }
    public function moveAfter(_e:Pointer<Element>, _mark:Pointer<Element>):Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._list != _l || _e == _mark || _mark.value._list != _l) {
            return;
        };
        _l.value._move(_e, _mark);
    }
    public function moveBefore(_e:Pointer<Element>, _mark:Pointer<Element>):Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._list != _l || _e == _mark || _mark.value._list != _l) {
            return;
        };
        _l.value._move(_e, _mark.value._prev);
    }
    public function moveToBack(_e:Pointer<Element>):Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._list != _l || _l.value._root._prev == _e) {
            return;
        };
        _l.value._move(_e, _l.value._root._prev);
    }
    public function moveToFront(_e:Pointer<Element>):Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._list != _l || _l.value._root._next == _e) {
            return;
        };
        _l.value._move(_e, Go.pointer(_l.value._root));
    }
    public function insertAfter(_v:AnyInterface, _mark:Pointer<Element>):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_mark.value._list != _l) {
            return new Pointer<Element>().nil();
        };
        return _l.value._insertValue(Go.toInterface(_v), _mark);
    }
    public function insertBefore(_v:AnyInterface, _mark:Pointer<Element>):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_mark.value._list != _l) {
            return new Pointer<Element>().nil();
        };
        return _l.value._insertValue(Go.toInterface(_v), _mark.value._prev);
    }
    public function pushBack(_v:AnyInterface):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _l.value._lazyInit();
        return _l.value._insertValue(Go.toInterface(_v), _l.value._root._prev);
    }
    public function pushFront(_v:AnyInterface):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _l.value._lazyInit();
        return _l.value._insertValue(Go.toInterface(_v), Go.pointer(_l.value._root));
    }
    public function remove(_e:Pointer<Element>):AnyInterface {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._list == _l) {
            _l.value._remove(_e);
        };
        return Go.toInterface(_e.value.value);
    }
    public function _move(_e:Pointer<Element>, _at:Pointer<Element>):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e == _at) {
            return _e;
        };
        _e.value._prev.value._next = _e.value._next;
        _e.value._next.value._prev = _e.value._prev;
        _e.value._prev = _at;
        _e.value._next = _at.value._next;
        _e.value._prev.value._next = _e;
        _e.value._next.value._prev = _e;
        return _e;
    }
    public function _remove(_e:Pointer<Element>):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._prev.value._next = _e.value._next;
        _e.value._next.value._prev = _e.value._prev;
        _e.value._next = new Pointer<Element>().nil();
        _e.value._prev = new Pointer<Element>().nil();
        _e.value._list = new Pointer<List_>().nil();
        _l.value._len--;
        return _e;
    }
    public function _insertValue(_v:AnyInterface, _at:Pointer<Element>):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _l.value._insert(Go.pointer((({ value : Go.toInterface(_v), _next : new Pointer<Element>().nil(), _prev : new Pointer<Element>().nil(), _list : new Pointer<List_>().nil() } : Element))), _at);
    }
    public function _insert(_e:Pointer<Element>, _at:Pointer<Element>):Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._prev = _at;
        _e.value._next = _at.value._next;
        _e.value._prev.value._next = _e;
        _e.value._next.value._prev = _e;
        _e.value._list = _l;
        _l.value._len++;
        return _e;
    }
    public function _lazyInit():Void {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_l.value._root._next == null || _l.value._root._next.isNil())) {
            _l.value.init();
        };
    }
    public function back():Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_l.value._len == ((0 : GoInt))) {
            return new Pointer<Element>().nil();
        };
        return _l.value._root._prev;
    }
    public function front():Pointer<Element> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_l.value._len == ((0 : GoInt))) {
            return new Pointer<Element>().nil();
        };
        return _l.value._root._next;
    }
    public function len():GoInt {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _l.value._len;
    }
    public function init():Pointer<List_> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _l.value._root._next = Go.pointer(_l.value._root);
        _l.value._root._prev = Go.pointer(_l.value._root);
        _l.value._len = ((0 : GoInt));
        return _l;
    }
    public var _root : Element = new Element();
    public var _len : GoInt = ((0 : GoInt));
    public function new(?_root:Element, ?_len:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_root) + " " + Go.string(_len) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new List_(_root, _len);
    }
    public function __set__(__tmp__) {
        this._root = __tmp__._root;
        this._len = __tmp__._len;
        return this;
    }
}
/**
    // New returns an initialized list.
**/
function new_():Pointer<List_> {
        return Go.pointer(new List_()).value.init();
    }
class Element_extension_fields {
    public function next(__tmp__):Pointer<Element> return __tmp__.next();
    public function prev(__tmp__):Pointer<Element> return __tmp__.prev();
}
class List__extension_fields {
    public function init(__tmp__):Pointer<List_> return __tmp__.init();
    public function len(__tmp__):GoInt return __tmp__.len();
    public function front(__tmp__):Pointer<Element> return __tmp__.front();
    public function back(__tmp__):Pointer<Element> return __tmp__.back();
    public function _lazyInit(__tmp__):Void __tmp__._lazyInit();
    public function _insert(__tmp__, _e:Pointer<Element>, _at:Pointer<Element>):Pointer<Element> return __tmp__._insert(_e, _at);
    public function _insertValue(__tmp__, _v:AnyInterface, _at:Pointer<Element>):Pointer<Element> return __tmp__._insertValue(_v, _at);
    public function _remove(__tmp__, _e:Pointer<Element>):Pointer<Element> return __tmp__._remove(_e);
    public function _move(__tmp__, _e:Pointer<Element>, _at:Pointer<Element>):Pointer<Element> return __tmp__._move(_e, _at);
    public function remove(__tmp__, _e:Pointer<Element>):AnyInterface return __tmp__.remove(_e);
    public function pushFront(__tmp__, _v:AnyInterface):Pointer<Element> return __tmp__.pushFront(_v);
    public function pushBack(__tmp__, _v:AnyInterface):Pointer<Element> return __tmp__.pushBack(_v);
    public function insertBefore(__tmp__, _v:AnyInterface, _mark:Pointer<Element>):Pointer<Element> return __tmp__.insertBefore(_v, _mark);
    public function insertAfter(__tmp__, _v:AnyInterface, _mark:Pointer<Element>):Pointer<Element> return __tmp__.insertAfter(_v, _mark);
    public function moveToFront(__tmp__, _e:Pointer<Element>):Void __tmp__.moveToFront(_e);
    public function moveToBack(__tmp__, _e:Pointer<Element>):Void __tmp__.moveToBack(_e);
    public function moveBefore(__tmp__, _e:Pointer<Element>, _mark:Pointer<Element>):Void __tmp__.moveBefore(_e, _mark);
    public function moveAfter(__tmp__, _e:Pointer<Element>, _mark:Pointer<Element>):Void __tmp__.moveAfter(_e, _mark);
    public function pushBackList(__tmp__, _other:Pointer<List_>):Void __tmp__.pushBackList(_other);
    public function pushFrontList(__tmp__, _other:Pointer<List_>):Void __tmp__.pushFrontList(_other);
}
