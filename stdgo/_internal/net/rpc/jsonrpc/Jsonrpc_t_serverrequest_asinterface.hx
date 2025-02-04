package stdgo._internal.net.rpc.jsonrpc;
class T_serverRequest_asInterface {
    @:keep
    @:tdfield
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequestpointer.T_serverRequestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
