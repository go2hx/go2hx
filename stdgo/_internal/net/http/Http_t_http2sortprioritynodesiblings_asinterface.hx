package stdgo._internal.net.http;
class T_http2sortPriorityNodeSiblings_asInterface {
    @:keep
    @:tdfield
    public dynamic function less(_i:stdgo.GoInt, _k:stdgo.GoInt):Bool return @:_0 __self__.value.less(_i, _k);
    @:keep
    @:tdfield
    public dynamic function swap(_i:stdgo.GoInt, _k:stdgo.GoInt):Void @:_0 __self__.value.swap(_i, _k);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2sortprioritynodesiblingspointer.T_http2sortPriorityNodeSiblingsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
