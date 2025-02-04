package stdgo._internal.net.rpc;
class Server_asInterface {
    @:keep
    @:tdfield
    public dynamic function handleHTTP(_rpcPath:stdgo.GoString, _debugPath:stdgo.GoString):Void @:_0 __self__.value.handleHTTP(_rpcPath, _debugPath);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void @:_0 __self__.value.serveHTTP(_w, _req);
    @:keep
    @:tdfield
    public dynamic function accept(_lis:stdgo._internal.net.Net_listener.Listener):Void @:_0 __self__.value.accept(_lis);
    @:keep
    @:tdfield
    public dynamic function _readRequestHeader(_codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return @:_0 __self__.value._readRequestHeader(_codec);
    @:keep
    @:tdfield
    public dynamic function _readRequest(_codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>; var _3 : stdgo._internal.reflect.Reflect_value.Value; var _4 : stdgo._internal.reflect.Reflect_value.Value; var _5 : Bool; var _6 : stdgo.Error; } return @:_0 __self__.value._readRequest(_codec);
    @:keep
    @:tdfield
    public dynamic function _freeResponse(_resp:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):Void @:_0 __self__.value._freeResponse(_resp);
    @:keep
    @:tdfield
    public dynamic function _getResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response> return @:_0 __self__.value._getResponse();
    @:keep
    @:tdfield
    public dynamic function _freeRequest(_req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):Void @:_0 __self__.value._freeRequest(_req);
    @:keep
    @:tdfield
    public dynamic function _getRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request> return @:_0 __self__.value._getRequest();
    @:keep
    @:tdfield
    public dynamic function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):stdgo.Error return @:_0 __self__.value.serveRequest(_codec);
    @:keep
    @:tdfield
    public dynamic function serveCodec(_codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):Void @:_0 __self__.value.serveCodec(_codec);
    @:keep
    @:tdfield
    public dynamic function serveConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void @:_0 __self__.value.serveConn(_conn);
    @:keep
    @:tdfield
    public dynamic function _sendResponse(_sending:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _reply:stdgo.AnyInterface, _codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _errmsg:stdgo.GoString):Void @:_0 __self__.value._sendResponse(_sending, _req, _reply, _codec, _errmsg);
    @:keep
    @:tdfield
    public dynamic function _register(_rcvr:stdgo.AnyInterface, _name:stdgo.GoString, _useName:Bool):stdgo.Error return @:_0 __self__.value._register(_rcvr, _name, _useName);
    @:keep
    @:tdfield
    public dynamic function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.registerName(_name, _rcvr);
    @:keep
    @:tdfield
    public dynamic function register(_rcvr:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.register(_rcvr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.Rpc_serverpointer.ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
