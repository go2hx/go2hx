package stdgo._internal.internal.dag;
class Graph_asInterface {
    @:keep
    @:tdfield
    public dynamic function edges(_from:stdgo.GoString):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.edges(_from);
    @:keep
    @:tdfield
    public dynamic function hasEdge(_from:stdgo.GoString, _to:stdgo.GoString):Bool return @:_0 __self__.value.hasEdge(_from, _to);
    @:keep
    @:tdfield
    public dynamic function delEdge(_from:stdgo.GoString, _to:stdgo.GoString):Void @:_0 __self__.value.delEdge(_from, _to);
    @:keep
    @:tdfield
    public dynamic function addEdge(_from:stdgo.GoString, _to:stdgo.GoString):Void @:_0 __self__.value.addEdge(_from, _to);
    @:keep
    @:tdfield
    public dynamic function _addNode(_label:stdgo.GoString):Bool return @:_0 __self__.value._addNode(_label);
    @:keep
    @:tdfield
    public dynamic function transitiveReduction():Void @:_0 __self__.value.transitiveReduction();
    @:keep
    @:tdfield
    public dynamic function topo():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.topo();
    @:keep
    @:tdfield
    public dynamic function transpose():Void @:_0 __self__.value.transpose();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.dag.Dag_graphpointer.GraphPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
