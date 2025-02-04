package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension) class T_debugHTTP {
    @:embedded
    public var server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
    public function new(?server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>) {
        if (server != null) this.server = server;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var accept(get, never) : stdgo._internal.net.Net_listener.Listener -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_accept():stdgo._internal.net.Net_listener.Listener -> Void return @:check32 this.server.accept;
    public var handleHTTP(get, never) : (stdgo.GoString, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_handleHTTP():(stdgo.GoString, stdgo.GoString) -> Void return @:check32 this.server.handleHTTP;
    public var register(get, never) : stdgo.AnyInterface -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_register():stdgo.AnyInterface -> stdgo.Error return @:check32 this.server.register;
    public var registerName(get, never) : (stdgo.GoString, stdgo.AnyInterface) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_registerName():(stdgo.GoString, stdgo.AnyInterface) -> stdgo.Error return @:check32 this.server.registerName;
    public var serveCodec(get, never) : stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_serveCodec():stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> Void return @:check32 this.server.serveCodec;
    public var serveConn(get, never) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_serveConn():stdgo._internal.io.Io_readwritecloser.ReadWriteCloser -> Void return @:check32 this.server.serveConn;
    public var serveRequest(get, never) : stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_serveRequest():stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> stdgo.Error return @:check32 this.server.serveRequest;
    public var _freeRequest(get, never) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__freeRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request> -> Void return @:check32 this.server._freeRequest;
    public var _freeResponse(get, never) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__freeResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response> -> Void return @:check32 this.server._freeResponse;
    public var _getRequest(get, never) : () -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getRequest():() -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request> return @:check32 this.server._getRequest;
    public var _getResponse(get, never) : () -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getResponse():() -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response> return @:check32 this.server._getResponse;
    public var _readRequest(get, never) : stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>; var _3 : stdgo._internal.reflect.Reflect_value.Value; var _4 : stdgo._internal.reflect.Reflect_value.Value; var _5 : Bool; var _6 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readRequest():stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>; var _3 : stdgo._internal.reflect.Reflect_value.Value; var _4 : stdgo._internal.reflect.Reflect_value.Value; var _5 : Bool; var _6 : stdgo.Error; } return @:check32 this.server._readRequest;
    public var _readRequestHeader(get, never) : stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>; var _3 : Bool; var _4 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readRequestHeader():stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return @:check32 this.server._readRequestHeader;
    public var _register(get, never) : (stdgo.AnyInterface, stdgo.GoString, Bool) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__register():(stdgo.AnyInterface, stdgo.GoString, Bool) -> stdgo.Error return @:check32 this.server._register;
    public var _sendResponse(get, never) : (stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, stdgo.AnyInterface, stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__sendResponse():(stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, stdgo.AnyInterface, stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, stdgo.GoString) -> Void return @:check32 this.server._sendResponse;
    public function __copy__() {
        return new T_debugHTTP(server);
    }
}
