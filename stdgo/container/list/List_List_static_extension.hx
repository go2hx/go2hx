package stdgo.container.list;
class List_static_extension {
    static public function pushFrontList(_l:List_, _other:List_):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _other = (_other : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushFrontList(_l, _other);
    }
    static public function pushBackList(_l:List_, _other:List_):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _other = (_other : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushBackList(_l, _other);
    }
    static public function moveAfter(_l:List_, _e:Element, _mark:Element):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        final _mark = (_mark : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveAfter(_l, _e, _mark);
    }
    static public function moveBefore(_l:List_, _e:Element, _mark:Element):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        final _mark = (_mark : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveBefore(_l, _e, _mark);
    }
    static public function moveToBack(_l:List_, _e:Element):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveToBack(_l, _e);
    }
    static public function moveToFront(_l:List_, _e:Element):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension.moveToFront(_l, _e);
    }
    static public function insertAfter(_l:List_, _v:stdgo.AnyInterface, _mark:Element):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _v = (_v : stdgo.AnyInterface);
        final _mark = (_mark : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.insertAfter(_l, _v, _mark);
    }
    static public function insertBefore(_l:List_, _v:stdgo.AnyInterface, _mark:Element):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _v = (_v : stdgo.AnyInterface);
        final _mark = (_mark : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.insertBefore(_l, _v, _mark);
    }
    static public function pushBack(_l:List_, _v:stdgo.AnyInterface):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushBack(_l, _v);
    }
    static public function pushFront(_l:List_, _v:stdgo.AnyInterface):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.pushFront(_l, _v);
    }
    static public function remove(_l:List_, _e:Element):stdgo.AnyInterface {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.remove(_l, _e);
    }
    static public function _move(_l:List_, _e:Element, _at:Element):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        final _at = (_at : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension._move(_l, _e, _at);
    }
    static public function _remove(_l:List_, _e:Element):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension._remove(_l, _e);
    }
    static public function _insertValue(_l:List_, _v:stdgo.AnyInterface, _at:Element):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _v = (_v : stdgo.AnyInterface);
        final _at = (_at : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension._insertValue(_l, _v, _at);
    }
    static public function _insert(_l:List_, _e:Element, _at:Element):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        final _e = (_e : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        final _at = (_at : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension._insert(_l, _e, _at);
    }
    static public function _lazyInit(_l:List_):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        stdgo._internal.container.list.List_List_static_extension.List_static_extension._lazyInit(_l);
    }
    static public function back(_l:List_):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.back(_l);
    }
    static public function front(_l:List_):Element {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.front(_l);
    }
    static public function len(_l:List_):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.len(_l);
    }
    static public function init(_l:List_):List_ {
        final _l = (_l : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        return stdgo._internal.container.list.List_List_static_extension.List_static_extension.init(_l);
    }
}
