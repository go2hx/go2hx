package stdgo._internal.net.rpc;
class Client_asInterface {
    @:keep
    @:tdfield
    public dynamic function call(_serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.call(_serviceMethod, _args, _reply);
    @:keep
    @:tdfield
    public dynamic function go(_serviceMethod:stdgo.GoString, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>):stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call> return @:_0 __self__.value.go(_serviceMethod, _args, _reply, _done);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _input():Void @:_0 __self__.value._input();
    @:keep
    @:tdfield
    public dynamic function _send(_call:stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>):Void @:_0 __self__.value._send(_call);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.Rpc_clientpointer.ClientPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
