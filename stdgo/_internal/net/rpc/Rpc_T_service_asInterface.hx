package stdgo._internal.net.rpc;
class T_service_asInterface {
    @:keep
    @:tdfield
    public dynamic function _call(_server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>, _mtype:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _argv:stdgo._internal.reflect.Reflect_Value.Value, _replyv:stdgo._internal.reflect.Reflect_Value.Value, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void @:_0 __self__.value._call(_server, _sending, _wg, _mtype, _req, _argv, _replyv, _codec);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.Rpc_T_servicePointer.T_servicePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
