package stdgo.container.list;
@:structInit @:using(stdgo.container.list.List.Element_static_extension) abstract Element(stdgo._internal.container.list.List_Element.Element) from stdgo._internal.container.list.List_Element.Element to stdgo._internal.container.list.List_Element.Element {
    public var _next(get, set) : Element;
    function get__next():Element return this._next;
    function set__next(v:Element):Element {
        this._next = v;
        return v;
    }
    public var _prev(get, set) : Element;
    function get__prev():Element return this._prev;
    function set__prev(v:Element):Element {
        this._prev = v;
        return v;
    }
    public var _list(get, set) : List_;
    function get__list():List_ return this._list;
    function set__list(v:List_):List_ {
        this._list = v;
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = v;
        return v;
    }
    public function new(?_next:Element, ?_prev:Element, ?_list:List_, ?value:stdgo.AnyInterface) this = new stdgo._internal.container.list.List_Element.Element(_next, _prev, _list, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.container.list.List.List_static_extension) abstract List_(stdgo._internal.container.list.List_List.List) from stdgo._internal.container.list.List_List.List to stdgo._internal.container.list.List_List.List {
    public var _root(get, set) : Element;
    function get__root():Element return this._root;
    function set__root(v:Element):Element {
        this._root = v;
        return v;
    }
    public var _len(get, set) : StdTypes.Int;
    function get__len():StdTypes.Int return this._len;
    function set__len(v:StdTypes.Int):StdTypes.Int {
        this._len = v;
        return v;
    }
    public function new(?_root:Element, ?_len:StdTypes.Int) this = new stdgo._internal.container.list.List_List.List(_root, _len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Element_static_extension {
    static public function prev(_e:Element):Element {
        return stdgo._internal.container.list.List_Element_static_extension.Element_static_extension.prev(_e);
    }
    static public function next(_e:Element):Element {
        return stdgo._internal.container.list.List_Element_static_extension.Element_static_extension.next(_e);
    }
}
class List_static_extension {
    static public function pushFrontList(_l:List_, _other:List_):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushFrontList(_l, _other);
    }
    static public function pushBackList(_l:List_, _other:List_):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushBackList(_l, _other);
    }
    static public function moveAfter(_l:List_, _e:Element, _mark:Element):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveAfter(_l, _e, _mark);
    }
    static public function moveBefore(_l:List_, _e:Element, _mark:Element):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveBefore(_l, _e, _mark);
    }
    static public function moveToBack(_l:List_, _e:Element):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveToBack(_l, _e);
    }
    static public function moveToFront(_l:List_, _e:Element):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveToFront(_l, _e);
    }
    static public function insertAfter(_l:List_, _v:stdgo.AnyInterface, _mark:Element):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.insertAfter(_l, _v, _mark);
    }
    static public function insertBefore(_l:List_, _v:stdgo.AnyInterface, _mark:Element):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.insertBefore(_l, _v, _mark);
    }
    static public function pushBack(_l:List_, _v:stdgo.AnyInterface):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushBack(_l, _v);
    }
    static public function pushFront(_l:List_, _v:stdgo.AnyInterface):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushFront(_l, _v);
    }
    static public function remove(_l:List_, _e:Element):stdgo.AnyInterface {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.remove(_l, _e);
    }
    static public function _move(_l:List_, _e:Element, _at:Element):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension._move(_l, _e, _at);
    }
    static public function _remove(_l:List_, _e:Element):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension._remove(_l, _e);
    }
    static public function _insertValue(_l:List_, _v:stdgo.AnyInterface, _at:Element):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension._insertValue(_l, _v, _at);
    }
    static public function _insert(_l:List_, _e:Element, _at:Element):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension._insert(_l, _e, _at);
    }
    static public function _lazyInit(_l:List_):Void {
        stdgo._internal.container.list.List_List_static_extension.List_static_extension._lazyInit(_l);
    }
    static public function back(_l:List_):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.back(_l);
    }
    static public function front(_l:List_):Element {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.front(_l);
    }
    static public function len(_l:List_):StdTypes.Int {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.len(_l);
    }
    static public function init(_l:List_):List_ {
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.init(_l);
    }
}
/**
    Package list implements a doubly linked list.
    
    To iterate over a list (where l is a *List):
    
    	for e := l.Front(); e != nil; e = e.Next() {
    		// do something with e.Value
    	}
**/
class List {
    /**
        New returns an initialized list.
    **/
    static public function new_():List_ {
        return stdgo._internal.container.list.List_new_.new_();
    }
}
