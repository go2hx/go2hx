package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension) class T_debugHTTP {
    @:embedded
    public var server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
    public function new(?server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>) {
        if (server != null) this.server = server;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function accept(_lis:stdgo._internal.net.Net_Listener.Listener) this.server.accept(_lis);
    @:embedded
    public function handleHTTP(_network:stdgo.GoString, _address:stdgo.GoString) this.server.handleHTTP(_network, _address);
    @:embedded
    public function register(__0:stdgo.AnyInterface):stdgo.Error return this.server.register(__0);
    @:embedded
    public function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error return this.server.registerName(_name, _rcvr);
    @:embedded
    public function serveCodec(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec) this.server.serveCodec(_codec);
    @:embedded
    public function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) this.server.serveConn(_conn);
    @:embedded
    public function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return this.server.serveRequest(_codec);
    @:embedded
    public function _freeRequest(__0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>) this.server._freeRequest(__0);
    @:embedded
    public function _freeResponse(__0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>) this.server._freeResponse(__0);
    @:embedded
    public function _getRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return this.server._getRequest();
    @:embedded
    public function _getResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return this.server._getResponse();
    @:embedded
    public function _readRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return this.server._readRequest(_codec);
    @:embedded
    public function _readRequestHeader(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return this.server._readRequestHeader(_codec);
    @:embedded
    public function _register(_rcvr:stdgo.AnyInterface, _name:stdgo.GoString, _useName:Bool):stdgo.Error return this.server._register(_rcvr, _name, _useName);
    @:embedded
    public function _sendResponse(_sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _reply:stdgo.AnyInterface, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _errmsg:stdgo.GoString) this.server._sendResponse(_sending, _req, _reply, _codec, _errmsg);
    public function __copy__() {
        return new T_debugHTTP(server);
    }
}
