package stdgo._internal.net.rpc;
class T_gobServerCodec_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function writeResponse(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _body:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.writeResponse(_r, _body);
    @:keep
    @:tdfield
    public dynamic function readRequestBody(_body:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.readRequestBody(_body);
    @:keep
    @:tdfield
    public dynamic function readRequestHeader(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error return @:_0 __self__.value.readRequestHeader(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.Rpc_t_gobservercodecpointer.T_gobServerCodecPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
