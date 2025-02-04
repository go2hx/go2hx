package stdgo._internal.container.list;
class List_asInterface {
    @:keep
    @:tdfield
    public dynamic function pushFrontList(_other:stdgo.Ref<stdgo._internal.container.list.List_list.List>):Void @:_0 __self__.value.pushFrontList(_other);
    @:keep
    @:tdfield
    public dynamic function pushBackList(_other:stdgo.Ref<stdgo._internal.container.list.List_list.List>):Void @:_0 __self__.value.pushBackList(_other);
    @:keep
    @:tdfield
    public dynamic function moveAfter(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void @:_0 __self__.value.moveAfter(_e, _mark);
    @:keep
    @:tdfield
    public dynamic function moveBefore(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void @:_0 __self__.value.moveBefore(_e, _mark);
    @:keep
    @:tdfield
    public dynamic function moveToBack(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void @:_0 __self__.value.moveToBack(_e);
    @:keep
    @:tdfield
    public dynamic function moveToFront(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void @:_0 __self__.value.moveToFront(_e);
    @:keep
    @:tdfield
    public dynamic function insertAfter(_v:stdgo.AnyInterface, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value.insertAfter(_v, _mark);
    @:keep
    @:tdfield
    public dynamic function insertBefore(_v:stdgo.AnyInterface, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value.insertBefore(_v, _mark);
    @:keep
    @:tdfield
    public dynamic function pushBack(_v:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value.pushBack(_v);
    @:keep
    @:tdfield
    public dynamic function pushFront(_v:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value.pushFront(_v);
    @:keep
    @:tdfield
    public dynamic function remove(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.AnyInterface return @:_0 __self__.value.remove(_e);
    @:keep
    @:tdfield
    public dynamic function _move(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _at:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void @:_0 __self__.value._move(_e, _at);
    @:keep
    @:tdfield
    public dynamic function _remove(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void @:_0 __self__.value._remove(_e);
    @:keep
    @:tdfield
    public dynamic function _insertValue(_v:stdgo.AnyInterface, _at:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value._insertValue(_v, _at);
    @:keep
    @:tdfield
    public dynamic function _insert(_e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _at:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value._insert(_e, _at);
    @:keep
    @:tdfield
    public dynamic function _lazyInit():Void @:_0 __self__.value._lazyInit();
    @:keep
    @:tdfield
    public dynamic function back():stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value.back();
    @:keep
    @:tdfield
    public dynamic function front():stdgo.Ref<stdgo._internal.container.list.List_element.Element> return @:_0 __self__.value.front();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function init():stdgo.Ref<stdgo._internal.container.list.List_list.List> return @:_0 __self__.value.init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.container.list.List_listpointer.ListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
