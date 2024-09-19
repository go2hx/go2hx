package stdgo._internal.net.rpc;
class T_debugHTTP_asInterface {
    @:keep
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.serveHTTP(_w, _req);
    @:embedded
    public dynamic function _sendResponse(_sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _reply:stdgo.AnyInterface, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _errmsg:stdgo.GoString):Void __self__.value._sendResponse(_sending, _req, _reply, _codec, _errmsg);
    @:embedded
    public dynamic function _register(_rcvr:stdgo.AnyInterface, _name:stdgo.GoString, _useName:Bool):stdgo.Error return __self__.value._register(_rcvr, _name, _useName);
    @:embedded
    public dynamic function _readRequestHeader(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return __self__.value._readRequestHeader(_codec);
    @:embedded
    public dynamic function _readRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return __self__.value._readRequest(_codec);
    @:embedded
    public dynamic function _getResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return __self__.value._getResponse();
    @:embedded
    public dynamic function _getRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return __self__.value._getRequest();
    @:embedded
    public dynamic function _freeResponse(__0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):Void __self__.value._freeResponse(__0);
    @:embedded
    public dynamic function _freeRequest(__0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):Void __self__.value._freeRequest(__0);
    @:embedded
    public dynamic function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return __self__.value.serveRequest(_codec);
    @:embedded
    public dynamic function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void __self__.value.serveConn(_conn);
    @:embedded
    public dynamic function serveCodec(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void __self__.value.serveCodec(_codec);
    @:embedded
    public dynamic function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error return __self__.value.registerName(_name, _rcvr);
    @:embedded
    public dynamic function register(__0:stdgo.AnyInterface):stdgo.Error return __self__.value.register(__0);
    @:embedded
    public dynamic function handleHTTP(_network:stdgo.GoString, _address:stdgo.GoString):Void __self__.value.handleHTTP(_network, _address);
    @:embedded
    public dynamic function accept(_lis:stdgo._internal.net.Net_Listener.Listener):Void __self__.value.accept(_lis);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
