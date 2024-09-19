package stdgo._internal.net.rpc;
class Client_asInterface {
    @:keep
    public dynamic function call(_serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error return __self__.value.call(_serviceMethod, _args, _reply);
    @:keep
    public dynamic function go(_serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call> return __self__.value.go(_serviceMethod, _args, _reply, _done);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _input():Void __self__.value._input();
    @:keep
    public dynamic function _send(_call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>):Void __self__.value._send(_call);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.Rpc_Client.Client>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
