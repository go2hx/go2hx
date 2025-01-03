package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension) class T_debugHTTP {
    @:embedded
    public var server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
    public function new(?server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>) {
        if (server != null) this.server = server;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var accept(get, never) : stdgo._internal.net.Net_Listener.Listener -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_accept():stdgo._internal.net.Net_Listener.Listener -> Void return @:check3 (this.server ?? throw "null pointer derefrence").accept;
    public var handleHTTP(get, never) : (stdgo.GoString, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_handleHTTP():(stdgo.GoString, stdgo.GoString) -> Void return @:check3 (this.server ?? throw "null pointer derefrence").handleHTTP;
    public var register(get, never) : stdgo.AnyInterface -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_register():stdgo.AnyInterface -> stdgo.Error return @:check3 (this.server ?? throw "null pointer derefrence").register;
    public var registerName(get, never) : (stdgo.GoString, stdgo.AnyInterface) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_registerName():(stdgo.GoString, stdgo.AnyInterface) -> stdgo.Error return @:check3 (this.server ?? throw "null pointer derefrence").registerName;
    public var serveCodec(get, never) : stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_serveCodec():stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> Void return @:check3 (this.server ?? throw "null pointer derefrence").serveCodec;
    public var serveConn(get, never) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_serveConn():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser -> Void return @:check3 (this.server ?? throw "null pointer derefrence").serveConn;
    public var serveRequest(get, never) : stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_serveRequest():stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> stdgo.Error return @:check3 (this.server ?? throw "null pointer derefrence").serveRequest;
    public var _freeRequest(get, never) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__freeRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> -> Void return @:check3 (this.server ?? throw "null pointer derefrence")._freeRequest;
    public var _freeResponse(get, never) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__freeResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> -> Void return @:check3 (this.server ?? throw "null pointer derefrence")._freeResponse;
    public var _getRequest(get, never) : () -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getRequest():() -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return @:check3 (this.server ?? throw "null pointer derefrence")._getRequest;
    public var _getResponse(get, never) : () -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getResponse():() -> stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return @:check3 (this.server ?? throw "null pointer derefrence")._getResponse;
    public var _readRequest(get, never) : stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readRequest():stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return @:check3 (this.server ?? throw "null pointer derefrence")._readRequest;
    public var _readRequestHeader(get, never) : stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readRequestHeader():stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec -> { var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return @:check3 (this.server ?? throw "null pointer derefrence")._readRequestHeader;
    public var _register(get, never) : (stdgo.AnyInterface, stdgo.GoString, Bool) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__register():(stdgo.AnyInterface, stdgo.GoString, Bool) -> stdgo.Error return @:check3 (this.server ?? throw "null pointer derefrence")._register;
    public var _sendResponse(get, never) : (stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, stdgo.AnyInterface, stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__sendResponse():(stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, stdgo.AnyInterface, stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, stdgo.GoString) -> Void return @:check3 (this.server ?? throw "null pointer derefrence")._sendResponse;
    public function __copy__() {
        return new T_debugHTTP(server);
    }
}
