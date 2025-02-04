package stdgo._internal.net.rpc.jsonrpc;
class T_clientCodec_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function readResponseBody(_x:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.readResponseBody(_x);
    @:keep
    @:tdfield
    public dynamic function readResponseHeader(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):stdgo.Error return @:_0 __self__.value.readResponseHeader(_r);
    @:keep
    @:tdfield
    public dynamic function writeRequest(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _param:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.writeRequest(_r, _param);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodecpointer.T_clientCodecPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
