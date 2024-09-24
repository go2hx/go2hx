package stdgo.net.rpc;
final defaultRPCPath : String = stdgo._internal.net.rpc.Rpc_defaultRPCPath.defaultRPCPath;
final defaultDebugPath : String = stdgo._internal.net.rpc.Rpc_defaultDebugPath.defaultDebugPath;
var errShutdown(get, set) : stdgo.Error;
private function get_errShutdown():stdgo.Error return stdgo._internal.net.rpc.Rpc_errShutdown.errShutdown;
private function set_errShutdown(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.rpc.Rpc_errShutdown.errShutdown = v;
        return v;
    }
var defaultServer(get, set) : Server;
private function get_defaultServer():Server return stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer;
private function set_defaultServer(v:Server):Server {
        stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer = v;
        return v;
    }
class ClientCodec_static_extension {
    static public function close(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.close(t);
    }
    static public function readResponseBody(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, _0:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.readResponseBody(t, _0);
    }
    static public function readResponseHeader(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, _0:Response):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.readResponseHeader(t, _0);
    }
    static public function writeRequest(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, _0:Request, _1:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.writeRequest(t, _0, _1);
    }
}
typedef ClientCodec = stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec;
class ServerCodec_static_extension {
    static public function close(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.close(t);
    }
    static public function writeResponse(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:Response, _1:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.writeResponse(t, _0, _1);
    }
    static public function readRequestBody(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.readRequestBody(t, _0);
    }
    static public function readRequestHeader(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:Request):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.readRequestHeader(t, _0);
    }
}
typedef ServerCodec = stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec;
@:structInit @:using(stdgo.net.rpc.Rpc.Call_static_extension) abstract Call(stdgo._internal.net.rpc.Rpc_Call.Call) from stdgo._internal.net.rpc.Rpc_Call.Call to stdgo._internal.net.rpc.Rpc_Call.Call {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = v;
        return v;
    }
    public var args(get, set) : stdgo.AnyInterface;
    function get_args():stdgo.AnyInterface return this.args;
    function set_args(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.args = v;
        return v;
    }
    public var reply(get, set) : stdgo.AnyInterface;
    function get_reply():stdgo.AnyInterface return this.reply;
    function set_reply(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.reply = v;
        return v;
    }
    public var error(get, set) : stdgo.Error;
    function get_error():stdgo.Error return this.error;
    function set_error(v:stdgo.Error):stdgo.Error {
        this.error = v;
        return v;
    }
    public var done(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>;
    function get_done():stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> return this.done;
    function set_done(v:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> {
        this.done = v;
        return v;
    }
    public function new(?serviceMethod:String, ?args:stdgo.AnyInterface, ?reply:stdgo.AnyInterface, ?error:stdgo.Error, ?done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>) this = new stdgo._internal.net.rpc.Rpc_Call.Call(serviceMethod, args, reply, error, done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.Client_static_extension) abstract Client(stdgo._internal.net.rpc.Rpc_Client.Client) from stdgo._internal.net.rpc.Rpc_Client.Client to stdgo._internal.net.rpc.Rpc_Client.Client {
    public var _codec(get, set) : ClientCodec;
    function get__codec():ClientCodec return this._codec;
    function set__codec(v:ClientCodec):ClientCodec {
        this._codec = v;
        return v;
    }
    public var _reqMutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__reqMutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._reqMutex;
    function set__reqMutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._reqMutex = v;
        return v;
    }
    public var _request(get, set) : Request;
    function get__request():Request return this._request;
    function set__request(v:Request):Request {
        this._request = v;
        return v;
    }
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _seq(get, set) : haxe.UInt64;
    function get__seq():haxe.UInt64 return this._seq;
    function set__seq(v:haxe.UInt64):haxe.UInt64 {
        this._seq = v;
        return v;
    }
    public var _pending(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>;
    function get__pending():stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> return this._pending;
    function set__pending(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> {
        this._pending = v;
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public var _shutdown(get, set) : Bool;
    function get__shutdown():Bool return this._shutdown;
    function set__shutdown(v:Bool):Bool {
        this._shutdown = v;
        return v;
    }
    public function new(?_codec:ClientCodec, ?_reqMutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_request:Request, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_seq:haxe.UInt64, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>, ?_closing:Bool, ?_shutdown:Bool) this = new stdgo._internal.net.rpc.Rpc_Client.Client(_codec, _reqMutex, _request, _mutex, _seq, _pending, _closing, _shutdown);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_gobClientCodec_static_extension) abstract T_gobClientCodec(stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec) from stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec to stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec {
    public var _rwc(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _dec(get, set) : stdgo._internal.encoding.gob.Gob_Decoder.Decoder;
    function get__dec():stdgo._internal.encoding.gob.Gob_Decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.gob.Gob_Decoder.Decoder):stdgo._internal.encoding.gob.Gob_Decoder.Decoder {
        this._dec = v;
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.gob.Gob_Encoder.Encoder;
    function get__enc():stdgo._internal.encoding.gob.Gob_Encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.gob.Gob_Encoder.Encoder):stdgo._internal.encoding.gob.Gob_Encoder.Encoder {
        this._enc = v;
        return v;
    }
    public var _encBuf(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__encBuf():stdgo._internal.bufio.Bufio_Writer.Writer return this._encBuf;
    function set__encBuf(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._encBuf = v;
        return v;
    }
    public function new(?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_dec:stdgo._internal.encoding.gob.Gob_Decoder.Decoder, ?_enc:stdgo._internal.encoding.gob.Gob_Encoder.Encoder, ?_encBuf:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec(_rwc, _dec, _enc, _encBuf);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_debugMethod(stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod) from stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod to stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod {
    public var type(get, set) : T_methodType;
    function get_type():T_methodType return this.type;
    function set_type(v:T_methodType):T_methodType {
        this.type = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?type:T_methodType, ?name:String) this = new stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod(type, name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_debugService(stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService) from stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService to stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService {
    public var service(get, set) : T_service;
    function get_service():T_service return this.service;
    function set_service(v:T_service):T_service {
        this.service = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var method(get, set) : T_methodArray;
    function get_method():T_methodArray return this.method;
    function set_method(v:T_methodArray):T_methodArray {
        this.method = v;
        return v;
    }
    public function new(?service:T_service, ?name:String, ?method:T_methodArray) this = new stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService(service, name, method);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugHTTP_static_extension) abstract T_debugHTTP(stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP) from stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP to stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP {
    public var server(get, set) : Server;
    function get_server():Server return this.server;
    function set_server(v:Server):Server {
        this.server = v;
        return v;
    }
    public function new(?server:Server) this = new stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP(server);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_methodType_static_extension) abstract T_methodType(stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) from stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType to stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType {
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _method(get, set) : stdgo._internal.reflect.Reflect_Method.Method;
    function get__method():stdgo._internal.reflect.Reflect_Method.Method return this._method;
    function set__method(v:stdgo._internal.reflect.Reflect_Method.Method):stdgo._internal.reflect.Reflect_Method.Method {
        this._method = v;
        return v;
    }
    public var argType(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_argType():stdgo._internal.reflect.Reflect_Type_.Type_ return this.argType;
    function set_argType(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.argType = v;
        return v;
    }
    public var replyType(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_replyType():stdgo._internal.reflect.Reflect_Type_.Type_ return this.replyType;
    function set_replyType(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.replyType = v;
        return v;
    }
    public var _numCalls(get, set) : std.UInt;
    function get__numCalls():std.UInt return this._numCalls;
    function set__numCalls(v:std.UInt):std.UInt {
        this._numCalls = v;
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_method:stdgo._internal.reflect.Reflect_Method.Method, ?argType:stdgo._internal.reflect.Reflect_Type_.Type_, ?replyType:stdgo._internal.reflect.Reflect_Type_.Type_, ?_numCalls:std.UInt) this = new stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType(mutex, _method, argType, replyType, _numCalls);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_service_static_extension) abstract T_service(stdgo._internal.net.rpc.Rpc_T_service.T_service) from stdgo._internal.net.rpc.Rpc_T_service.T_service to stdgo._internal.net.rpc.Rpc_T_service.T_service {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _rcvr(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__rcvr():stdgo._internal.reflect.Reflect_Value.Value return this._rcvr;
    function set__rcvr(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._rcvr = v;
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__typ():stdgo._internal.reflect.Reflect_Type_.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._typ = v;
        return v;
    }
    public var _method(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>;
    function get__method():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>> return this._method;
    function set__method(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>> {
        this._method = v;
        return v;
    }
    public function new(?_name:String, ?_rcvr:stdgo._internal.reflect.Reflect_Value.Value, ?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_method:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>) this = new stdgo._internal.net.rpc.Rpc_T_service.T_service(_name, _rcvr, _typ, _method);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Request(stdgo._internal.net.rpc.Rpc_Request.Request) from stdgo._internal.net.rpc.Rpc_Request.Request to stdgo._internal.net.rpc.Rpc_Request.Request {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = v;
        return v;
    }
    public var seq(get, set) : haxe.UInt64;
    function get_seq():haxe.UInt64 return this.seq;
    function set_seq(v:haxe.UInt64):haxe.UInt64 {
        this.seq = v;
        return v;
    }
    public var _next(get, set) : Request;
    function get__next():Request return this._next;
    function set__next(v:Request):Request {
        this._next = v;
        return v;
    }
    public function new(?serviceMethod:String, ?seq:haxe.UInt64, ?_next:Request) this = new stdgo._internal.net.rpc.Rpc_Request.Request(serviceMethod, seq, _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Response(stdgo._internal.net.rpc.Rpc_Response.Response) from stdgo._internal.net.rpc.Rpc_Response.Response to stdgo._internal.net.rpc.Rpc_Response.Response {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = v;
        return v;
    }
    public var seq(get, set) : haxe.UInt64;
    function get_seq():haxe.UInt64 return this.seq;
    function set_seq(v:haxe.UInt64):haxe.UInt64 {
        this.seq = v;
        return v;
    }
    public var error(get, set) : String;
    function get_error():String return this.error;
    function set_error(v:String):String {
        this.error = v;
        return v;
    }
    public var _next(get, set) : Response;
    function get__next():Response return this._next;
    function set__next(v:Response):Response {
        this._next = v;
        return v;
    }
    public function new(?serviceMethod:String, ?seq:haxe.UInt64, ?error:String, ?_next:Response) this = new stdgo._internal.net.rpc.Rpc_Response.Response(serviceMethod, seq, error, _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.Server_static_extension) abstract Server(stdgo._internal.net.rpc.Rpc_Server.Server) from stdgo._internal.net.rpc.Rpc_Server.Server to stdgo._internal.net.rpc.Rpc_Server.Server {
    public var _serviceMap(get, set) : stdgo._internal.sync.Sync_Map_.Map_;
    function get__serviceMap():stdgo._internal.sync.Sync_Map_.Map_ return this._serviceMap;
    function set__serviceMap(v:stdgo._internal.sync.Sync_Map_.Map_):stdgo._internal.sync.Sync_Map_.Map_ {
        this._serviceMap = v;
        return v;
    }
    public var _reqLock(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__reqLock():stdgo._internal.sync.Sync_Mutex.Mutex return this._reqLock;
    function set__reqLock(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._reqLock = v;
        return v;
    }
    public var _freeReq(get, set) : Request;
    function get__freeReq():Request return this._freeReq;
    function set__freeReq(v:Request):Request {
        this._freeReq = v;
        return v;
    }
    public var _respLock(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__respLock():stdgo._internal.sync.Sync_Mutex.Mutex return this._respLock;
    function set__respLock(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._respLock = v;
        return v;
    }
    public var _freeResp(get, set) : Response;
    function get__freeResp():Response return this._freeResp;
    function set__freeResp(v:Response):Response {
        this._freeResp = v;
        return v;
    }
    public function new(?_serviceMap:stdgo._internal.sync.Sync_Map_.Map_, ?_reqLock:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeReq:Request, ?_respLock:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeResp:Response) this = new stdgo._internal.net.rpc.Rpc_Server.Server(_serviceMap, _reqLock, _freeReq, _respLock, _freeResp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_gobServerCodec_static_extension) abstract T_gobServerCodec(stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec) from stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec to stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec {
    public var _rwc(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _dec(get, set) : stdgo._internal.encoding.gob.Gob_Decoder.Decoder;
    function get__dec():stdgo._internal.encoding.gob.Gob_Decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.gob.Gob_Decoder.Decoder):stdgo._internal.encoding.gob.Gob_Decoder.Decoder {
        this._dec = v;
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.gob.Gob_Encoder.Encoder;
    function get__enc():stdgo._internal.encoding.gob.Gob_Encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.gob.Gob_Encoder.Encoder):stdgo._internal.encoding.gob.Gob_Encoder.Encoder {
        this._enc = v;
        return v;
    }
    public var _encBuf(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__encBuf():stdgo._internal.bufio.Bufio_Writer.Writer return this._encBuf;
    function set__encBuf(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._encBuf = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_dec:stdgo._internal.encoding.gob.Gob_Decoder.Decoder, ?_enc:stdgo._internal.encoding.gob.Gob_Encoder.Encoder, ?_encBuf:stdgo._internal.bufio.Bufio_Writer.Writer, ?_closed:Bool) this = new stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec(_rwc, _dec, _enc, _encBuf, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.net.rpc.Rpc_T__struct_0.T__struct_0;
typedef ServerError = stdgo._internal.net.rpc.Rpc_ServerError.ServerError;
typedef T_methodArray = stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray;
typedef T_serviceArray = stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray;
class Call_static_extension {
    static public function _done(_call:Call):Void {
        stdgo._internal.net.rpc.Rpc_Call_static_extension.Call_static_extension._done(_call);
    }
}
class Client_static_extension {
    static public function call(_client:Client, _serviceMethod:String, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension.call(_client, _serviceMethod, _args, _reply);
    }
    static public function go(_client:Client, _serviceMethod:String, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):Call {
        return stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension.go(_client, _serviceMethod, _args, _reply, _done);
    }
    static public function close(_client:Client):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension.close(_client);
    }
    static public function _input(_client:Client):Void {
        stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension._input(_client);
    }
    static public function _send(_client:Client, _call:Call):Void {
        stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension._send(_client, _call);
    }
}
class T_gobClientCodec_static_extension {
    static public function close(_c:T_gobClientCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.close(_c);
    }
    static public function readResponseBody(_c:T_gobClientCodec, _body:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.readResponseBody(_c, _body);
    }
    static public function readResponseHeader(_c:T_gobClientCodec, _r:Response):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.readResponseHeader(_c, _r);
    }
    static public function writeRequest(_c:T_gobClientCodec, _r:Request, _body:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.writeRequest(_c, _r, _body);
    }
}
class T_debugHTTP_static_extension {
    static public function serveHTTP(_server:T_debugHTTP, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveHTTP(_server, _w, _req);
    }
    public static function _sendResponse(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _sending:stdgo._internal.sync.Sync_Mutex.Mutex, _req:Request, _reply:stdgo.AnyInterface, _codec:ServerCodec, _errmsg:String) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._sendResponse(__self__, _sending, _req, _reply, _codec, _errmsg);
    }
    public static function _register(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _rcvr:stdgo.AnyInterface, _name:String, _useName:Bool):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._register(__self__, _rcvr, _name, _useName);
    }
    public static function _readRequestHeader(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:ServerCodec):stdgo.Tuple.Tuple5<T_service, T_methodType, Request, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._readRequestHeader(__self__, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _readRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:ServerCodec):{ var _0 : T_service; var _1 : T_methodType; var _2 : Request; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._readRequest(__self__, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6 };
        };
    }
    public static function _getResponse(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):Response {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._getResponse(__self__);
    }
    public static function _getRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):Request {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._getRequest(__self__);
    }
    public static function _freeResponse(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, __0:Response) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._freeResponse(__self__, __0);
    }
    public static function _freeRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, __0:Request) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._freeRequest(__self__, __0);
    }
    public static function serveRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveRequest(__self__, _codec);
    }
    public static function serveConn(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveConn(__self__, _conn);
    }
    public static function serveCodec(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:ServerCodec) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveCodec(__self__, _codec);
    }
    public static function registerName(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _name:String, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.registerName(__self__, _name, _rcvr);
    }
    public static function register(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, __0:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.register(__self__, __0);
    }
    public static function handleHTTP(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _network:String, _address:String) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.handleHTTP(__self__, _network, _address);
    }
    public static function accept(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _lis:stdgo._internal.net.Net_Listener.Listener) {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.accept(__self__, _lis);
    }
}
class T_methodType_static_extension {
    static public function numCalls(_m:T_methodType):std.UInt {
        return stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension.numCalls(_m);
    }
    public static function _unlockSlow(__self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType, _new:StdTypes.Int) {
        stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension._unlockSlow(__self__, _new);
    }
    public static function _lockSlow(__self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) {
        stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) {
        stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType):Bool {
        return stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) {
        stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension.lock(__self__);
    }
}
class T_service_static_extension {
    static public function _call(_s:T_service, _server:Server, _sending:stdgo._internal.sync.Sync_Mutex.Mutex, _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, _mtype:T_methodType, _req:Request, _argv:stdgo._internal.reflect.Reflect_Value.Value, _replyv:stdgo._internal.reflect.Reflect_Value.Value, _codec:ServerCodec):Void {
        stdgo._internal.net.rpc.Rpc_T_service_static_extension.T_service_static_extension._call(_s, _server, _sending, _wg, _mtype, _req, _argv, _replyv, _codec);
    }
}
class Server_static_extension {
    static public function handleHTTP(_server:Server, _rpcPath:String, _debugPath:String):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.handleHTTP(_server, _rpcPath, _debugPath);
    }
    static public function serveHTTP(_server:Server, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveHTTP(_server, _w, _req);
    }
    static public function accept(_server:Server, _lis:stdgo._internal.net.Net_Listener.Listener):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.accept(_server, _lis);
    }
    static public function _readRequestHeader(_server:Server, _codec:ServerCodec):stdgo.Tuple.Tuple5<T_service, T_methodType, Request, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._readRequestHeader(_server, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function _readRequest(_server:Server, _codec:ServerCodec):{ var _0 : T_service; var _1 : T_methodType; var _2 : Request; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._readRequest(_server, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6 };
        };
    }
    static public function _freeResponse(_server:Server, _resp:Response):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._freeResponse(_server, _resp);
    }
    static public function _getResponse(_server:Server):Response {
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._getResponse(_server);
    }
    static public function _freeRequest(_server:Server, _req:Request):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._freeRequest(_server, _req);
    }
    static public function _getRequest(_server:Server):Request {
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._getRequest(_server);
    }
    static public function serveRequest(_server:Server, _codec:ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveRequest(_server, _codec);
    }
    static public function serveCodec(_server:Server, _codec:ServerCodec):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveCodec(_server, _codec);
    }
    static public function serveConn(_server:Server, _conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveConn(_server, _conn);
    }
    static public function _sendResponse(_server:Server, _sending:stdgo._internal.sync.Sync_Mutex.Mutex, _req:Request, _reply:stdgo.AnyInterface, _codec:ServerCodec, _errmsg:String):Void {
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._sendResponse(_server, _sending, _req, _reply, _codec, _errmsg);
    }
    static public function _register(_server:Server, _rcvr:stdgo.AnyInterface, _name:String, _useName:Bool):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._register(_server, _rcvr, _name, _useName);
    }
    static public function registerName(_server:Server, _name:String, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.registerName(_server, _name, _rcvr);
    }
    static public function register(_server:Server, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.register(_server, _rcvr);
    }
}
class T_gobServerCodec_static_extension {
    static public function close(_c:T_gobServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.close(_c);
    }
    static public function writeResponse(_c:T_gobServerCodec, _r:Response, _body:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.writeResponse(_c, _r, _body);
    }
    static public function readRequestBody(_c:T_gobServerCodec, _body:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.readRequestBody(_c, _body);
    }
    static public function readRequestHeader(_c:T_gobServerCodec, _r:Request):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.readRequestHeader(_c, _r);
    }
}
class ServerError_static_extension {
    static public function error(_e:ServerError):String {
        return stdgo._internal.net.rpc.Rpc_ServerError_static_extension.ServerError_static_extension.error(_e);
    }
}
class T_methodArray_static_extension {
    static public function swap(_m:T_methodArray, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.net.rpc.Rpc_T_methodArray_static_extension.T_methodArray_static_extension.swap(_m, _i, _j);
    }
    static public function less(_m:T_methodArray, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.net.rpc.Rpc_T_methodArray_static_extension.T_methodArray_static_extension.less(_m, _i, _j);
    }
    static public function len(_m:T_methodArray):StdTypes.Int {
        return stdgo._internal.net.rpc.Rpc_T_methodArray_static_extension.T_methodArray_static_extension.len(_m);
    }
}
class T_serviceArray_static_extension {
    static public function swap(_s:T_serviceArray, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.net.rpc.Rpc_T_serviceArray_static_extension.T_serviceArray_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_serviceArray, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.net.rpc.Rpc_T_serviceArray_static_extension.T_serviceArray_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_serviceArray):StdTypes.Int {
        return stdgo._internal.net.rpc.Rpc_T_serviceArray_static_extension.T_serviceArray_static_extension.len(_s);
    }
}
/**
    /|*
    Package rpc provides access to the exported methods of an object across a
    network or other I/O connection.  A server registers an object, making it visible
    as a service with the name of the type of the object.  After registration, exported
    methods of the object will be accessible remotely.  A server may register multiple
    objects (services) of different types but it is an error to register multiple
    objects of the same type.
    
    Only methods that satisfy these criteria will be made available for remote access;
    other methods will be ignored:
    
      - the method's type is exported.
      - the method is exported.
      - the method has two arguments, both exported (or builtin) types.
      - the method's second argument is a pointer.
      - the method has return type error.
    
    In effect, the method must look schematically like
    
    	func (t *T) MethodName(argType T1, replyType *T2) error
    
    where T1 and T2 can be marshaled by encoding/gob.
    These requirements apply even if a different codec is used.
    (In the future, these requirements may soften for custom codecs.)
    
    The method's first argument represents the arguments provided by the caller; the
    second argument represents the result parameters to be returned to the caller.
    The method's return value, if non-nil, is passed back as a string that the client
    sees as if created by errors.New.  If an error is returned, the reply parameter
    will not be sent back to the client.
    
    The server may handle requests on a single connection by calling ServeConn.  More
    typically it will create a network listener and call Accept or, for an HTTP
    listener, HandleHTTP and http.Serve.
    
    A client wishing to use the service establishes a connection and then invokes
    NewClient on the connection.  The convenience function Dial (DialHTTP) performs
    both steps for a raw network connection (an HTTP connection).  The resulting
    Client object has two methods, Call and Go, that specify the service and method to
    call, a pointer containing the arguments, and a pointer to receive the result
    parameters.
    
    The Call method waits for the remote call to complete while the Go method
    launches the call asynchronously and signals completion using the Call
    structure's Done channel.
    
    Unless an explicit codec is set up, package encoding/gob is used to
    transport the data.
    
    Here is a simple example.  A server wishes to export an object of type Arith:
    
    	package server
    
    	import "errors"
    
    	type Args struct {
    		A, B int
    	}
    
    	type Quotient struct {
    		Quo, Rem int
    	}
    
    	type Arith int
    
    	func (t *Arith) Multiply(args *Args, reply *int) error {
    		*reply = args.A * args.B
    		return nil
    	}
    
    	func (t *Arith) Divide(args *Args, quo *Quotient) error {
    		if args.B == 0 {
    			return errors.New("divide by zero")
    		}
    		quo.Quo = args.A / args.B
    		quo.Rem = args.A % args.B
    		return nil
    	}
    
    The server calls (for HTTP service):
    
    	arith := new(Arith)
    	rpc.Register(arith)
    	rpc.HandleHTTP()
    	l, err := net.Listen("tcp", ":1234")
    	if err != nil {
    		log.Fatal("listen error:", err)
    	}
    	go http.Serve(l, nil)
    
    At this point, clients can see a service "Arith" with methods "Arith.Multiply" and
    "Arith.Divide".  To invoke one, a client first dials the server:
    
    	client, err := rpc.DialHTTP("tcp", serverAddress + ":1234")
    	if err != nil {
    		log.Fatal("dialing:", err)
    	}
    
    Then it can make a remote call:
    
    	// Synchronous call
    	args := &server.Args{7,8}
    	var reply int
    	err = client.Call("Arith.Multiply", args, &reply)
    	if err != nil {
    		log.Fatal("arith error:", err)
    	}
    	fmt.Printf("Arith: %d*%d=%d", args.A, args.B, reply)
    
    or
    
    	// Asynchronous call
    	quotient := new(Quotient)
    	divCall := client.Go("Arith.Divide", args, quotient, nil)
    	replyCall := <-divCall.Done	// will be equal to divCall
    	// check errors, print, etc.
    
    A server implementation will often provide a simple, type-safe wrapper for the
    client.
    
    The net/rpc package is frozen and is not accepting new features.
    *|/
**/
class Rpc {
    /**
        NewClient returns a new Client to handle requests to the
        set of services at the other end of the connection.
        It adds a buffer to the write side of the connection so
        the header and payload are sent as a unit.
        
        The read and write halves of the connection are serialized independently,
        so no interlocking is required. However each half may be accessed
        concurrently so the implementation of conn should protect against
        concurrent reads or concurrent writes.
    **/
    static public function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Client {
        return stdgo._internal.net.rpc.Rpc_newClient.newClient(_conn);
    }
    /**
        NewClientWithCodec is like NewClient but uses the specified
        codec to encode requests and decode responses.
    **/
    static public function newClientWithCodec(_codec:ClientCodec):Client {
        return stdgo._internal.net.rpc.Rpc_newClientWithCodec.newClientWithCodec(_codec);
    }
    /**
        DialHTTP connects to an HTTP RPC server at the specified network address
        listening on the default HTTP RPC path.
    **/
    static public function dialHTTP(_network:String, _address:String):stdgo.Tuple<Client, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_dialHTTP.dialHTTP(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialHTTPPath connects to an HTTP RPC server
        at the specified network address and path.
    **/
    static public function dialHTTPPath(_network:String, _address:String, _path:String):stdgo.Tuple<Client, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_dialHTTPPath.dialHTTPPath(_network, _address, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Dial connects to an RPC server at the specified network address.
    **/
    static public function dial(_network:String, _address:String):stdgo.Tuple<Client, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewServer returns a new Server.
    **/
    static public function newServer():Server {
        return stdgo._internal.net.rpc.Rpc_newServer.newServer();
    }
    /**
        Register publishes the receiver's methods in the DefaultServer.
    **/
    static public function register(_rcvr:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_register.register(_rcvr);
    }
    /**
        RegisterName is like Register but uses the provided name for the type
        instead of the receiver's concrete type.
    **/
    static public function registerName(_name:String, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_registerName.registerName(_name, _rcvr);
    }
    /**
        ServeConn runs the DefaultServer on a single connection.
        ServeConn blocks, serving the connection until the client hangs up.
        The caller typically invokes ServeConn in a go statement.
        ServeConn uses the gob wire format (see package gob) on the
        connection. To use an alternate codec, use ServeCodec.
        See NewClient's comment for information about concurrent access.
    **/
    static public function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_serveConn.serveConn(_conn);
    }
    /**
        ServeCodec is like ServeConn but uses the specified codec to
        decode requests and encode responses.
    **/
    static public function serveCodec(_codec:ServerCodec):Void {
        stdgo._internal.net.rpc.Rpc_serveCodec.serveCodec(_codec);
    }
    /**
        ServeRequest is like ServeCodec but synchronously serves a single request.
        It does not close the codec upon completion.
    **/
    static public function serveRequest(_codec:ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_serveRequest.serveRequest(_codec);
    }
    /**
        Accept accepts connections on the listener and serves requests
        to DefaultServer for each incoming connection.
        Accept blocks; the caller typically invokes it in a go statement.
    **/
    static public function accept(_lis:stdgo._internal.net.Net_Listener.Listener):Void {
        stdgo._internal.net.rpc.Rpc_accept.accept(_lis);
    }
    /**
        HandleHTTP registers an HTTP handler for RPC messages to DefaultServer
        on DefaultRPCPath and a debugging handler on DefaultDebugPath.
        It is still necessary to invoke http.Serve(), typically in a go statement.
    **/
    static public function handleHTTP():Void {
        stdgo._internal.net.rpc.Rpc_handleHTTP.handleHTTP();
    }
}
