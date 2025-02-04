package stdgo._internal.container.list;
@:structInit @:using(stdgo._internal.container.list.List_element_static_extension.Element_static_extension) class Element {
    public var _next : stdgo.Ref<stdgo._internal.container.list.List_element.Element> = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
    public var _prev : stdgo.Ref<stdgo._internal.container.list.List_element.Element> = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
    public var _list : stdgo.Ref<stdgo._internal.container.list.List_list.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
    public var value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_next:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, ?_prev:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, ?_list:stdgo.Ref<stdgo._internal.container.list.List_list.List>, ?value:stdgo.AnyInterface) {
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
        if (_list != null) this._list = _list;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Element(_next, _prev, _list, value);
    }
}
