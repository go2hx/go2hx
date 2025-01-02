package stdgo._internal.container.list;
@:keep @:allow(stdgo._internal.container.list.List.Element_asInterface) class Element_static_extension {
    @:keep
    @:tdfield
    static public function prev( _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = _e;
        {
            var _p = (@:checkr _e ?? throw "null pointer dereference")._prev;
            if ((((@:checkr _e ?? throw "null pointer dereference")._list != null && (((@:checkr _e ?? throw "null pointer dereference")._list : Dynamic).__nil__ == null || !((@:checkr _e ?? throw "null pointer dereference")._list : Dynamic).__nil__)) && (_p != (stdgo.Go.setRef((@:checkr (@:checkr _e ?? throw "null pointer dereference")._list ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>)) : Bool)) {
                return _p;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function next( _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = _e;
        {
            var _p = (@:checkr _e ?? throw "null pointer dereference")._next;
            if ((((@:checkr _e ?? throw "null pointer dereference")._list != null && (((@:checkr _e ?? throw "null pointer dereference")._list : Dynamic).__nil__ == null || !((@:checkr _e ?? throw "null pointer dereference")._list : Dynamic).__nil__)) && (_p != (stdgo.Go.setRef((@:checkr (@:checkr _e ?? throw "null pointer dereference")._list ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>)) : Bool)) {
                return _p;
            };
        };
        return null;
    }
}
