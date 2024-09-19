package stdgo._internal.container.list;
@:keep @:allow(stdgo._internal.container.list.List.Element_asInterface) class Element_static_extension {
    @:keep
    static public function prev( _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = _e;
        {
            var _p = _e._prev;
            if ((((_e._list != null) && ((_e._list : Dynamic).__nil__ == null || !(_e._list : Dynamic).__nil__)) && (_p != (stdgo.Go.setRef(_e._list._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>)) : Bool)) {
                return _p;
            };
        };
        return null;
    }
    @:keep
    static public function next( _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = _e;
        {
            var _p = _e._next;
            if ((((_e._list != null) && ((_e._list : Dynamic).__nil__ == null || !(_e._list : Dynamic).__nil__)) && (_p != (stdgo.Go.setRef(_e._list._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>)) : Bool)) {
                return _p;
            };
        };
        return null;
    }
}
