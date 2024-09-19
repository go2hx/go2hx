package stdgo._internal.net.rpc;
class Server_asInterface {
    @:keep
    public dynamic function handleHTTP(_rpcPath:stdgo.GoString, _debugPath:stdgo.GoString):Void __self__.value.handleHTTP(_rpcPath, _debugPath);
    @:keep
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.serveHTTP(_w, _req);
    @:keep
    public dynamic function accept(_lis:stdgo._internal.net.Net_Listener.Listener):Void __self__.value.accept(_lis);
    @:keep
    public dynamic function _readRequestHeader(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return __self__.value._readRequestHeader(_codec);
    @:keep
    public dynamic function _readRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return __self__.value._readRequest(_codec);
    @:keep
    public dynamic function _freeResponse(_resp:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):Void __self__.value._freeResponse(_resp);
    @:keep
    public dynamic function _getResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return __self__.value._getResponse();
    @:keep
    public dynamic function _freeRequest(_req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):Void __self__.value._freeRequest(_req);
    @:keep
    public dynamic function _getRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return __self__.value._getRequest();
    @:keep
    public dynamic function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return __self__.value.serveRequest(_codec);
    @:keep
    public dynamic function serveCodec(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void __self__.value.serveCodec(_codec);
    @:keep
    public dynamic function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void __self__.value.serveConn(_conn);
    @:keep
    public dynamic function _sendResponse(_sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _reply:stdgo.AnyInterface, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _errmsg:stdgo.GoString):Void __self__.value._sendResponse(_sending, _req, _reply, _codec, _errmsg);
    @:keep
    public dynamic function _register(_rcvr:stdgo.AnyInterface, _name:stdgo.GoString, _useName:Bool):stdgo.Error return __self__.value._register(_rcvr, _name, _useName);
    @:keep
    public dynamic function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error return __self__.value.registerName(_name, _rcvr);
    @:keep
    public dynamic function register(_rcvr:stdgo.AnyInterface):stdgo.Error return __self__.value.register(_rcvr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.Rpc_Server.Server>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
