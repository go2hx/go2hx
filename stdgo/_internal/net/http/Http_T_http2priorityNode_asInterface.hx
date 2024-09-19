package stdgo._internal.net.http;
class T_http2priorityNode_asInterface {
    @:keep
    public dynamic function _walkReadyInOrder(_openParent:Bool, _tmp:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>, _f:(stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, Bool) -> Bool):Bool return __self__.value._walkReadyInOrder(_openParent, _tmp, _f);
    @:keep
    public dynamic function _addBytes(_b:stdgo.GoInt64):Void __self__.value._addBytes(_b);
    @:keep
    public dynamic function _setParent(_parent:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>):Void __self__.value._setParent(_parent);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
