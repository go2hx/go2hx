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
@:structInit @:using(stdgo.container.list.List.Element_static_extension) class Element {
    public var _next : Ref<Element> = null;
    public var _prev : Ref<Element> = null;
    public var _list : Ref<List> = null;
    public var value : AnyInterface = ((null : AnyInterface));
    public function new(?_next:Ref<Element>, ?_prev:Ref<Element>, ?_list:Ref<List>, ?value:AnyInterface) {
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
        if (_list != null) this._list = _list;
        if (value != null) this.value = value;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Element(_next, _prev, _list, value);
    }
}
@:structInit @:using(stdgo.container.list.List.List_static_extension) class List {
    public var _root : Element = new Element();
    public var _len : GoInt = ((0 : GoInt));
    public function new(?_root:Element, ?_len:GoInt) {
        if (_root != null) this._root = _root;
        if (_len != null) this._len = _len;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new List(_root, _len);
    }
}
/**
    // New returns an initialized list.
**/
function new_():List {
        return new List().init();
    }
@:keep class Element_static_extension {
    /**
        // Prev returns the previous list element or nil.
    **/
    @:keep
    public static function prev( _e:Element):Element {
        {
            var _p = _e._prev;
            if ((_e._list != null) && (_p != _e._list._root)) {
                return _p;
            };
        };
        return null;
    }
    /**
        // Next returns the next list element or nil.
    **/
    @:keep
    public static function next( _e:Element):Element {
        {
            var _p = _e._next;
            if ((_e._list != null) && (_p != _e._list._root)) {
                return _p;
            };
        };
        return null;
    }
}
class Element_wrapper {
    /**
        // Prev returns the previous list element or nil.
    **/
    @:keep
    public var prev : () -> Element = null;
    /**
        // Next returns the next list element or nil.
    **/
    @:keep
    public var next : () -> Element = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Element;
}
@:keep class List_static_extension {
    /**
        // PushFrontList inserts a copy of another list at the front of list l.
        // The lists l and other may be the same. They must not be nil.
    **/
    @:keep
    public static function pushFrontList( _l:List, _other:List):Void {
        _l._lazyInit();
        {
            var _i:GoInt = _other.len(), _e = _other.back();
            Go.cfor(_i > ((0 : GoInt)), {
                final __tmp__0 = _i - ((1 : GoInt));
                final __tmp__1 = _e.prev();
                _i = __tmp__0;
                _e = __tmp__1;
            }, {
                _l._insertValue(Go.toInterface(_e.value), _l._root);
            });
        };
    }
    /**
        // PushBackList inserts a copy of another list at the back of list l.
        // The lists l and other may be the same. They must not be nil.
    **/
    @:keep
    public static function pushBackList( _l:List, _other:List):Void {
        _l._lazyInit();
        {
            var _i:GoInt = _other.len(), _e = _other.front();
            Go.cfor(_i > ((0 : GoInt)), {
                final __tmp__0 = _i - ((1 : GoInt));
                final __tmp__1 = _e.next();
                _i = __tmp__0;
                _e = __tmp__1;
            }, {
                _l._insertValue(Go.toInterface(_e.value), _l._root._prev);
            });
        };
    }
    /**
        // MoveAfter moves element e to its new position after mark.
        // If e or mark is not an element of l, or e == mark, the list is not modified.
        // The element and mark must not be nil.
    **/
    @:keep
    public static function moveAfter( _l:List, _e:Element, _mark:Element):Void {
        if (((_e._list != _l) || (_e == _mark)) || (_mark._list != _l)) {
            return;
        };
        _l._move(_e, _mark);
    }
    /**
        // MoveBefore moves element e to its new position before mark.
        // If e or mark is not an element of l, or e == mark, the list is not modified.
        // The element and mark must not be nil.
    **/
    @:keep
    public static function moveBefore( _l:List, _e:Element, _mark:Element):Void {
        if (((_e._list != _l) || (_e == _mark)) || (_mark._list != _l)) {
            return;
        };
        _l._move(_e, _mark._prev);
    }
    /**
        // MoveToBack moves element e to the back of list l.
        // If e is not an element of l, the list is not modified.
        // The element must not be nil.
    **/
    @:keep
    public static function moveToBack( _l:List, _e:Element):Void {
        if ((_e._list != _l) || (_l._root._prev == _e)) {
            return;
        };
        _l._move(_e, _l._root._prev);
    }
    /**
        // MoveToFront moves element e to the front of list l.
        // If e is not an element of l, the list is not modified.
        // The element must not be nil.
    **/
    @:keep
    public static function moveToFront( _l:List, _e:Element):Void {
        if ((_e._list != _l) || (_l._root._next == _e)) {
            return;
        };
        _l._move(_e, _l._root);
    }
    /**
        // InsertAfter inserts a new element e with value v immediately after mark and returns e.
        // If mark is not an element of l, the list is not modified.
        // The mark must not be nil.
    **/
    @:keep
    public static function insertAfter( _l:List, _v:AnyInterface, _mark:Element):Element {
        if (_mark._list != _l) {
            return null;
        };
        return _l._insertValue(Go.toInterface(_v), _mark);
    }
    /**
        // InsertBefore inserts a new element e with value v immediately before mark and returns e.
        // If mark is not an element of l, the list is not modified.
        // The mark must not be nil.
    **/
    @:keep
    public static function insertBefore( _l:List, _v:AnyInterface, _mark:Element):Element {
        if (_mark._list != _l) {
            return null;
        };
        return _l._insertValue(Go.toInterface(_v), _mark._prev);
    }
    /**
        // PushBack inserts a new element e with value v at the back of list l and returns e.
    **/
    @:keep
    public static function pushBack( _l:List, _v:AnyInterface):Element {
        _l._lazyInit();
        return _l._insertValue(Go.toInterface(_v), _l._root._prev);
    }
    /**
        // PushFront inserts a new element e with value v at the front of list l and returns e.
    **/
    @:keep
    public static function pushFront( _l:List, _v:AnyInterface):Element {
        _l._lazyInit();
        return _l._insertValue(Go.toInterface(_v), _l._root);
    }
    /**
        // Remove removes e from l if e is an element of list l.
        // It returns the element value e.Value.
        // The element must not be nil.
    **/
    @:keep
    public static function remove( _l:List, _e:Element):AnyInterface {
        if (_e._list == _l) {
            _l._remove(_e);
        };
        return Go.toInterface(_e.value);
    }
    /**
        // move moves e to next to at.
    **/
    @:keep
    public static function _move( _l:List, _e:Element, _at:Element):Void {
        if (_e == _at) {
            return;
        };
        _e._prev._next = _e._next;
        _e._next._prev = _e._prev;
        _e._prev = _at;
        _e._next = _at._next;
        _e._prev._next = _e;
        _e._next._prev = _e;
    }
    /**
        // remove removes e from its list, decrements l.len
    **/
    @:keep
    public static function _remove( _l:List, _e:Element):Void {
        _e._prev._next = _e._next;
        _e._next._prev = _e._prev;
        _e._next = null;
        _e._prev = null;
        _e._list = null;
        _l._len--;
    }
    /**
        // insertValue is a convenience wrapper for insert(&Element{Value: v}, at).
    **/
    @:keep
    public static function _insertValue( _l:List, _v:AnyInterface, _at:Element):Element {
        return _l._insert((({ value : Go.toInterface(_v), _next : null, _prev : null, _list : null } : Element)), _at);
    }
    /**
        // insert inserts e after at, increments l.len, and returns e.
    **/
    @:keep
    public static function _insert( _l:List, _e:Element, _at:Element):Element {
        _e._prev = _at;
        _e._next = _at._next;
        _e._prev._next = _e;
        _e._next._prev = _e;
        _e._list = _l;
        _l._len++;
        return _e;
    }
    /**
        // lazyInit lazily initializes a zero List value.
    **/
    @:keep
    public static function _lazyInit( _l:List):Void {
        if (_l._root._next == null) {
            _l.init();
        };
    }
    /**
        // Back returns the last element of list l or nil if the list is empty.
    **/
    @:keep
    public static function back( _l:List):Element {
        if (_l._len == ((0 : GoInt))) {
            return null;
        };
        return _l._root._prev;
    }
    /**
        // Front returns the first element of list l or nil if the list is empty.
    **/
    @:keep
    public static function front( _l:List):Element {
        if (_l._len == ((0 : GoInt))) {
            return null;
        };
        return _l._root._next;
    }
    /**
        // Len returns the number of elements of list l.
        // The complexity is O(1).
    **/
    @:keep
    public static function len( _l:List):GoInt {
        return _l._len;
    }
    /**
        // Init initializes or clears list l.
    **/
    @:keep
    public static function init( _l:List):List {
        _l._root._next = _l._root;
        _l._root._prev = _l._root;
        _l._len = ((0 : GoInt));
        return _l;
    }
}
class List_wrapper {
    /**
        // PushFrontList inserts a copy of another list at the front of list l.
        // The lists l and other may be the same. They must not be nil.
    **/
    @:keep
    public var pushFrontList : List -> Void = null;
    /**
        // PushBackList inserts a copy of another list at the back of list l.
        // The lists l and other may be the same. They must not be nil.
    **/
    @:keep
    public var pushBackList : List -> Void = null;
    /**
        // MoveAfter moves element e to its new position after mark.
        // If e or mark is not an element of l, or e == mark, the list is not modified.
        // The element and mark must not be nil.
    **/
    @:keep
    public var moveAfter : (Element, Element) -> Void = null;
    /**
        // MoveBefore moves element e to its new position before mark.
        // If e or mark is not an element of l, or e == mark, the list is not modified.
        // The element and mark must not be nil.
    **/
    @:keep
    public var moveBefore : (Element, Element) -> Void = null;
    /**
        // MoveToBack moves element e to the back of list l.
        // If e is not an element of l, the list is not modified.
        // The element must not be nil.
    **/
    @:keep
    public var moveToBack : Element -> Void = null;
    /**
        // MoveToFront moves element e to the front of list l.
        // If e is not an element of l, the list is not modified.
        // The element must not be nil.
    **/
    @:keep
    public var moveToFront : Element -> Void = null;
    /**
        // InsertAfter inserts a new element e with value v immediately after mark and returns e.
        // If mark is not an element of l, the list is not modified.
        // The mark must not be nil.
    **/
    @:keep
    public var insertAfter : (AnyInterface, Element) -> Element = null;
    /**
        // InsertBefore inserts a new element e with value v immediately before mark and returns e.
        // If mark is not an element of l, the list is not modified.
        // The mark must not be nil.
    **/
    @:keep
    public var insertBefore : (AnyInterface, Element) -> Element = null;
    /**
        // PushBack inserts a new element e with value v at the back of list l and returns e.
    **/
    @:keep
    public var pushBack : AnyInterface -> Element = null;
    /**
        // PushFront inserts a new element e with value v at the front of list l and returns e.
    **/
    @:keep
    public var pushFront : AnyInterface -> Element = null;
    /**
        // Remove removes e from l if e is an element of list l.
        // It returns the element value e.Value.
        // The element must not be nil.
    **/
    @:keep
    public var remove : Element -> AnyInterface = null;
    /**
        // move moves e to next to at.
    **/
    @:keep
    public var _move : (Element, Element) -> Void = null;
    /**
        // remove removes e from its list, decrements l.len
    **/
    @:keep
    public var _remove : Element -> Void = null;
    /**
        // insertValue is a convenience wrapper for insert(&Element{Value: v}, at).
    **/
    @:keep
    public var _insertValue : (AnyInterface, Element) -> Element = null;
    /**
        // insert inserts e after at, increments l.len, and returns e.
    **/
    @:keep
    public var _insert : (Element, Element) -> Element = null;
    /**
        // lazyInit lazily initializes a zero List value.
    **/
    @:keep
    public var _lazyInit : () -> Void = null;
    /**
        // Back returns the last element of list l or nil if the list is empty.
    **/
    @:keep
    public var back : () -> Element = null;
    /**
        // Front returns the first element of list l or nil if the list is empty.
    **/
    @:keep
    public var front : () -> Element = null;
    /**
        // Len returns the number of elements of list l.
        // The complexity is O(1).
    **/
    @:keep
    public var len : () -> GoInt = null;
    /**
        // Init initializes or clears list l.
    **/
    @:keep
    public var init : () -> List = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : List;
}
