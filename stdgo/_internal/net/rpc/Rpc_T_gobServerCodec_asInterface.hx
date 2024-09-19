package stdgo._internal.net.rpc;
class T_gobServerCodec_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function writeResponse(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _body:stdgo.AnyInterface):stdgo.Error return __self__.value.writeResponse(_r, _body);
    @:keep
    public dynamic function readRequestBody(_body:stdgo.AnyInterface):stdgo.Error return __self__.value.readRequestBody(_body);
    @:keep
    public dynamic function readRequestHeader(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error return __self__.value.readRequestHeader(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
