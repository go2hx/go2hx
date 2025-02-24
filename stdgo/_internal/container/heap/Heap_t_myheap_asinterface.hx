package stdgo._internal.container.heap;
class T_myHeap_asInterface {
    @:keep
    @:tdfield
    public dynamic function _verify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _i:stdgo.GoInt):Void @:_0 __self__.value._verify(_t, _i);
    @:keep
    @:tdfield
    public dynamic function push(_v:stdgo.AnyInterface):Void @:_0 __self__.value.push(_v);
    @:keep
    @:tdfield
    public dynamic function pop():stdgo.AnyInterface return @:_0 __self__.value.pop();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void @:_0 __self__.value.swap(_i, _j);
    @:keep
    @:tdfield
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return @:_0 __self__.value.less(_i, _j);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.container.heap.Heap_t_myheappointer.T_myHeapPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
