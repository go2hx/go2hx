package stdgo._internal.net.rpc.jsonrpc;
class T_clientCodec_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function readResponseBody(_x:stdgo.AnyInterface):stdgo.Error return __self__.value.readResponseBody(_x);
    @:keep
    public dynamic function readResponseHeader(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):stdgo.Error return __self__.value.readResponseHeader(_r);
    @:keep
    public dynamic function writeRequest(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _param:stdgo.AnyInterface):stdgo.Error return __self__.value.writeRequest(_r, _param);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
