package stdgo.container.list;
@:structInit @:using(stdgo.container.list.List.Element_static_extension) abstract Element(stdgo._internal.container.list.List_Element.Element) from stdgo._internal.container.list.List_Element.Element to stdgo._internal.container.list.List_Element.Element {
    public var _next(get, set) : Element;
    function get__next():Element return this._next;
    function set__next(v:Element):Element {
        this._next = (v : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return v;
    }
    public var _prev(get, set) : Element;
    function get__prev():Element return this._prev;
    function set__prev(v:Element):Element {
        this._prev = (v : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return v;
    }
    public var _list(get, set) : List_;
    function get__list():List_ return this._list;
    function set__list(v:List_):List_ {
        this._list = (v : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_next:Element, ?_prev:Element, ?_list:List_, ?value:stdgo.AnyInterface) this = new stdgo._internal.container.list.List_Element.Element((_next : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), (_prev : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), (_list : stdgo.Ref<stdgo._internal.container.list.List_List.List>), (value : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
