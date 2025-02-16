package stdgo;
final defaultRPCPath : String = stdgo._internal.net.rpc.Rpc_defaultrpcpath.defaultRPCPath;
final defaultDebugPath : String = stdgo._internal.net.rpc.Rpc_defaultdebugpath.defaultDebugPath;
var errShutdown(get, set) : stdgo.Error;
private function get_errShutdown():stdgo.Error return stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown;
private function set_errShutdown(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.rpc.Rpc_errshutdown.errShutdown = (v : stdgo.Error);
        return v;
    }
var defaultServer(get, set) : Server;
private function get_defaultServer():Server return stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer;
private function set_defaultServer(v:Server):Server {
        stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return v;
    }
class ClientCodec_static_extension {
    static public function close(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_clientcodec_static_extension.ClientCodec_static_extension.close(t);
    }
    static public function readResponseBody(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec, _0:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_clientcodec_static_extension.ClientCodec_static_extension.readResponseBody(t, _0);
    }
    static public function readResponseHeader(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec, _0:Response):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        return stdgo._internal.net.rpc.Rpc_clientcodec_static_extension.ClientCodec_static_extension.readResponseHeader(t, _0);
    }
    static public function writeRequest(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec, _0:Request, _1:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_clientcodec_static_extension.ClientCodec_static_extension.writeRequest(t, _0, _1);
    }
}
@:forward abstract ClientCodec(stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec) from stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec to stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec {
    @:from
    static function fromHaxeInterface(x:{ function writeRequest(_0:Request, _1:stdgo.AnyInterface):stdgo.Error; function readResponseHeader(_0:Response):stdgo.Error; function readResponseBody(_0:stdgo.AnyInterface):stdgo.Error; function close():stdgo.Error; }):ClientCodec {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ClientCodec = { writeRequest : (_0, _1) -> x.writeRequest(_0, _1), readResponseHeader : _0 -> x.readResponseHeader(_0), readResponseBody : _0 -> x.readResponseBody(_0), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ServerCodec_static_extension {
    static public function close(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_servercodec_static_extension.ServerCodec_static_extension.close(t);
    }
    static public function writeResponse(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _0:Response, _1:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_servercodec_static_extension.ServerCodec_static_extension.writeResponse(t, _0, _1);
    }
    static public function readRequestBody(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _0:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_servercodec_static_extension.ServerCodec_static_extension.readRequestBody(t, _0);
    }
    static public function readRequestHeader(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _0:Request):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        return stdgo._internal.net.rpc.Rpc_servercodec_static_extension.ServerCodec_static_extension.readRequestHeader(t, _0);
    }
}
@:forward abstract ServerCodec(stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec) from stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec to stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec {
    @:from
    static function fromHaxeInterface(x:{ function readRequestHeader(_0:Request):stdgo.Error; function readRequestBody(_0:stdgo.AnyInterface):stdgo.Error; function writeResponse(_0:Response, _1:stdgo.AnyInterface):stdgo.Error; function close():stdgo.Error; }):ServerCodec {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ServerCodec = { readRequestHeader : _0 -> x.readRequestHeader(_0), readRequestBody : _0 -> x.readRequestBody(_0), writeResponse : (_0, _1) -> x.writeResponse(_0, _1), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.rpc.Rpc.Call_static_extension) abstract Call(stdgo._internal.net.rpc.Rpc_call.Call) from stdgo._internal.net.rpc.Rpc_call.Call to stdgo._internal.net.rpc.Rpc_call.Call {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = (v : stdgo.GoString);
        return v;
    }
    public var args(get, set) : stdgo.AnyInterface;
    function get_args():stdgo.AnyInterface return this.args;
    function set_args(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.args = (v : stdgo.AnyInterface);
        return v;
    }
    public var reply(get, set) : stdgo.AnyInterface;
    function get_reply():stdgo.AnyInterface return this.reply;
    function set_reply(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.reply = (v : stdgo.AnyInterface);
        return v;
    }
    public var error(get, set) : stdgo.Error;
    function get_error():stdgo.Error return this.error;
    function set_error(v:stdgo.Error):stdgo.Error {
        this.error = (v : stdgo.Error);
        return v;
    }
    public var done(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>;
    function get_done():stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>> return this.done;
    function set_done(v:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>):stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>> {
        this.done = (v : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>);
        return v;
    }
    public function new(?serviceMethod:String, ?args:stdgo.AnyInterface, ?reply:stdgo.AnyInterface, ?error:stdgo.Error, ?done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>) this = new stdgo._internal.net.rpc.Rpc_call.Call((serviceMethod : stdgo.GoString), (args : stdgo.AnyInterface), (reply : stdgo.AnyInterface), (error : stdgo.Error), (done : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.Client_static_extension) abstract Client(stdgo._internal.net.rpc.Rpc_client.Client) from stdgo._internal.net.rpc.Rpc_client.Client to stdgo._internal.net.rpc.Rpc_client.Client {
    public var _codec(get, set) : ClientCodec;
    function get__codec():ClientCodec return this._codec;
    function set__codec(v:ClientCodec):ClientCodec {
        this._codec = v;
        return v;
    }
    public var _reqMutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__reqMutex():stdgo._internal.sync.Sync_mutex.Mutex return this._reqMutex;
    function set__reqMutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._reqMutex = v;
        return v;
    }
    public var _request(get, set) : Request;
    function get__request():Request return this._request;
    function set__request(v:Request):Request {
        this._request = v;
        return v;
    }
    public var _mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _seq(get, set) : haxe.UInt64;
    function get__seq():haxe.UInt64 return this._seq;
    function set__seq(v:haxe.UInt64):haxe.UInt64 {
        this._seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pending(get, set) : Map<haxe.UInt64, Call>;
    function get__pending():Map<haxe.UInt64, Call> return {
        final __obj__:Map<haxe.UInt64, Call> = [];
        for (key => value in this._pending) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__pending(v:Map<haxe.UInt64, Call>):Map<haxe.UInt64, Call> {
        this._pending = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>);
            };
            __obj__;
        };
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
    public function new(?_codec:ClientCodec, ?_reqMutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_request:Request, ?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_seq:haxe.UInt64, ?_pending:Map<haxe.UInt64, Call>, ?_closing:Bool, ?_shutdown:Bool) this = new stdgo._internal.net.rpc.Rpc_client.Client(_codec, _reqMutex, _request, _mutex, (_seq : stdgo.GoUInt64), {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>();
        for (key => value in _pending) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>);
        };
        __obj__;
    }, _closing, _shutdown);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_gobClientCodec_static_extension) @:dox(hide) abstract T_gobClientCodec(stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec) from stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec to stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec {
    public var _rwc(get, set) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_readwritecloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.io.Io_readwritecloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _dec(get, set) : stdgo._internal.encoding.gob.Gob_decoder.Decoder;
    function get__dec():stdgo._internal.encoding.gob.Gob_decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.gob.Gob_decoder.Decoder):stdgo._internal.encoding.gob.Gob_decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.gob.Gob_encoder.Encoder;
    function get__enc():stdgo._internal.encoding.gob.Gob_encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.gob.Gob_encoder.Encoder):stdgo._internal.encoding.gob.Gob_encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        return v;
    }
    public var _encBuf(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__encBuf():stdgo._internal.bufio.Bufio_writer.Writer return this._encBuf;
    function set__encBuf(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._encBuf = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public function new(?_rwc:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser, ?_dec:stdgo._internal.encoding.gob.Gob_decoder.Decoder, ?_enc:stdgo._internal.encoding.gob.Gob_encoder.Encoder, ?_encBuf:stdgo._internal.bufio.Bufio_writer.Writer) this = new stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec(_rwc, (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>), (_encBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugMethod_static_extension) @:dox(hide) abstract T_debugMethod(stdgo._internal.net.rpc.Rpc_t_debugmethod.T_debugMethod) from stdgo._internal.net.rpc.Rpc_t_debugmethod.T_debugMethod to stdgo._internal.net.rpc.Rpc_t_debugmethod.T_debugMethod {
    public var type(get, set) : T_methodType;
    function get_type():T_methodType return this.type;
    function set_type(v:T_methodType):T_methodType {
        this.type = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?type:T_methodType, ?name:String) this = new stdgo._internal.net.rpc.Rpc_t_debugmethod.T_debugMethod((type : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugService_static_extension) @:dox(hide) abstract T_debugService(stdgo._internal.net.rpc.Rpc_t_debugservice.T_debugService) from stdgo._internal.net.rpc.Rpc_t_debugservice.T_debugService to stdgo._internal.net.rpc.Rpc_t_debugservice.T_debugService {
    public var service(get, set) : T_service;
    function get_service():T_service return this.service;
    function set_service(v:T_service):T_service {
        this.service = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var method(get, set) : T_methodArray;
    function get_method():T_methodArray return this.method;
    function set_method(v:T_methodArray):T_methodArray {
        this.method = v;
        return v;
    }
    public function new(?service:T_service, ?name:String, ?method:T_methodArray) this = new stdgo._internal.net.rpc.Rpc_t_debugservice.T_debugService((service : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>), (name : stdgo.GoString), method);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugHTTP_static_extension) @:dox(hide) abstract T_debugHTTP(stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP) from stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP to stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP {
    public var server(get, set) : Server;
    function get_server():Server return this.server;
    function set_server(v:Server):Server {
        this.server = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return v;
    }
    public function new(?server:Server) this = new stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP((server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_methodType_static_extension) @:dox(hide) abstract T_methodType(stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType) from stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType to stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType {
    public var mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _method(get, set) : stdgo._internal.reflect.Reflect_method.Method;
    function get__method():stdgo._internal.reflect.Reflect_method.Method return this._method;
    function set__method(v:stdgo._internal.reflect.Reflect_method.Method):stdgo._internal.reflect.Reflect_method.Method {
        this._method = v;
        return v;
    }
    public var argType(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_argType():stdgo._internal.reflect.Reflect_type_.Type_ return this.argType;
    function set_argType(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.argType = v;
        return v;
    }
    public var replyType(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_replyType():stdgo._internal.reflect.Reflect_type_.Type_ return this.replyType;
    function set_replyType(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.replyType = v;
        return v;
    }
    public var _numCalls(get, set) : std.UInt;
    function get__numCalls():std.UInt return this._numCalls;
    function set__numCalls(v:std.UInt):std.UInt {
        this._numCalls = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_method:stdgo._internal.reflect.Reflect_method.Method, ?argType:stdgo._internal.reflect.Reflect_type_.Type_, ?replyType:stdgo._internal.reflect.Reflect_type_.Type_, ?_numCalls:std.UInt) this = new stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType(mutex, _method, argType, replyType, (_numCalls : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_service_static_extension) @:dox(hide) abstract T_service(stdgo._internal.net.rpc.Rpc_t_service.T_service) from stdgo._internal.net.rpc.Rpc_t_service.T_service to stdgo._internal.net.rpc.Rpc_t_service.T_service {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _rcvr(get, set) : stdgo._internal.reflect.Reflect_value.Value;
    function get__rcvr():stdgo._internal.reflect.Reflect_value.Value return this._rcvr;
    function set__rcvr(v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        this._rcvr = v;
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get__typ():stdgo._internal.reflect.Reflect_type_.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this._typ = v;
        return v;
    }
    public var _method(get, set) : Map<String, T_methodType>;
    function get__method():Map<String, T_methodType> return {
        final __obj__:Map<String, T_methodType> = [];
        for (key => value in this._method) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__method(v:Map<String, T_methodType>):Map<String, T_methodType> {
        this._method = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_name:String, ?_rcvr:stdgo._internal.reflect.Reflect_value.Value, ?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_method:Map<String, T_methodType>) this = new stdgo._internal.net.rpc.Rpc_t_service.T_service((_name : stdgo.GoString), _rcvr, _typ, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>();
        for (key => value in _method) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.Request_static_extension) abstract Request(stdgo._internal.net.rpc.Rpc_request.Request) from stdgo._internal.net.rpc.Rpc_request.Request to stdgo._internal.net.rpc.Rpc_request.Request {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = (v : stdgo.GoString);
        return v;
    }
    public var seq(get, set) : haxe.UInt64;
    function get_seq():haxe.UInt64 return this.seq;
    function set_seq(v:haxe.UInt64):haxe.UInt64 {
        this.seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var _next(get, set) : Request;
    function get__next():Request return this._next;
    function set__next(v:Request):Request {
        this._next = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        return v;
    }
    public function new(?serviceMethod:String, ?seq:haxe.UInt64, ?_next:Request) this = new stdgo._internal.net.rpc.Rpc_request.Request((serviceMethod : stdgo.GoString), (seq : stdgo.GoUInt64), (_next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.Response_static_extension) abstract Response(stdgo._internal.net.rpc.Rpc_response.Response) from stdgo._internal.net.rpc.Rpc_response.Response to stdgo._internal.net.rpc.Rpc_response.Response {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = (v : stdgo.GoString);
        return v;
    }
    public var seq(get, set) : haxe.UInt64;
    function get_seq():haxe.UInt64 return this.seq;
    function set_seq(v:haxe.UInt64):haxe.UInt64 {
        this.seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var error(get, set) : String;
    function get_error():String return this.error;
    function set_error(v:String):String {
        this.error = (v : stdgo.GoString);
        return v;
    }
    public var _next(get, set) : Response;
    function get__next():Response return this._next;
    function set__next(v:Response):Response {
        this._next = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        return v;
    }
    public function new(?serviceMethod:String, ?seq:haxe.UInt64, ?error:String, ?_next:Response) this = new stdgo._internal.net.rpc.Rpc_response.Response((serviceMethod : stdgo.GoString), (seq : stdgo.GoUInt64), (error : stdgo.GoString), (_next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.Server_static_extension) abstract Server(stdgo._internal.net.rpc.Rpc_server.Server) from stdgo._internal.net.rpc.Rpc_server.Server to stdgo._internal.net.rpc.Rpc_server.Server {
    public var _serviceMap(get, set) : stdgo._internal.sync.Sync_map_.Map_;
    function get__serviceMap():stdgo._internal.sync.Sync_map_.Map_ return this._serviceMap;
    function set__serviceMap(v:stdgo._internal.sync.Sync_map_.Map_):stdgo._internal.sync.Sync_map_.Map_ {
        this._serviceMap = v;
        return v;
    }
    public var _reqLock(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__reqLock():stdgo._internal.sync.Sync_mutex.Mutex return this._reqLock;
    function set__reqLock(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._reqLock = v;
        return v;
    }
    public var _freeReq(get, set) : Request;
    function get__freeReq():Request return this._freeReq;
    function set__freeReq(v:Request):Request {
        this._freeReq = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        return v;
    }
    public var _respLock(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__respLock():stdgo._internal.sync.Sync_mutex.Mutex return this._respLock;
    function set__respLock(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._respLock = v;
        return v;
    }
    public var _freeResp(get, set) : Response;
    function get__freeResp():Response return this._freeResp;
    function set__freeResp(v:Response):Response {
        this._freeResp = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        return v;
    }
    public function new(?_serviceMap:stdgo._internal.sync.Sync_map_.Map_, ?_reqLock:stdgo._internal.sync.Sync_mutex.Mutex, ?_freeReq:Request, ?_respLock:stdgo._internal.sync.Sync_mutex.Mutex, ?_freeResp:Response) this = new stdgo._internal.net.rpc.Rpc_server.Server(_serviceMap, _reqLock, (_freeReq : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>), _respLock, (_freeResp : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.Rpc.T_gobServerCodec_static_extension) @:dox(hide) abstract T_gobServerCodec(stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec) from stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec to stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec {
    public var _rwc(get, set) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_readwritecloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.io.Io_readwritecloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _dec(get, set) : stdgo._internal.encoding.gob.Gob_decoder.Decoder;
    function get__dec():stdgo._internal.encoding.gob.Gob_decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.gob.Gob_decoder.Decoder):stdgo._internal.encoding.gob.Gob_decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.gob.Gob_encoder.Encoder;
    function get__enc():stdgo._internal.encoding.gob.Gob_encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.gob.Gob_encoder.Encoder):stdgo._internal.encoding.gob.Gob_encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        return v;
    }
    public var _encBuf(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__encBuf():stdgo._internal.bufio.Bufio_writer.Writer return this._encBuf;
    function set__encBuf(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._encBuf = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_rwc:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser, ?_dec:stdgo._internal.encoding.gob.Gob_decoder.Decoder, ?_enc:stdgo._internal.encoding.gob.Gob_encoder.Encoder, ?_encBuf:stdgo._internal.bufio.Bufio_writer.Writer, ?_closed:Bool) this = new stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec(_rwc, (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>), (_encBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.net.rpc.Rpc_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.net.rpc.Rpc_t__struct_0.T__struct_0;
typedef ServerError = stdgo._internal.net.rpc.Rpc_servererror.ServerError;
@:dox(hide) typedef T_methodArray = stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray;
@:dox(hide) typedef T_serviceArray = stdgo._internal.net.rpc.Rpc_t_servicearray.T_serviceArray;
typedef CallPointer = stdgo._internal.net.rpc.Rpc_callpointer.CallPointer;
class Call_static_extension {
    static public function _done(_call:Call):Void {
        final _call = (_call : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>);
        stdgo._internal.net.rpc.Rpc_call_static_extension.Call_static_extension._done(_call);
    }
}
typedef ClientPointer = stdgo._internal.net.rpc.Rpc_clientpointer.ClientPointer;
class Client_static_extension {
    static public function call(_client:Client, _serviceMethod:String, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>);
        final _serviceMethod = (_serviceMethod : stdgo.GoString);
        final _args = (_args : stdgo.AnyInterface);
        final _reply = (_reply : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_client_static_extension.Client_static_extension.call(_client, _serviceMethod, _args, _reply);
    }
    static public function go(_client:Client, _serviceMethod:String, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>):Call {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>);
        final _serviceMethod = (_serviceMethod : stdgo.GoString);
        final _args = (_args : stdgo.AnyInterface);
        final _reply = (_reply : stdgo.AnyInterface);
        final _done = (_done : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>);
        return stdgo._internal.net.rpc.Rpc_client_static_extension.Client_static_extension.go(_client, _serviceMethod, _args, _reply, _done);
    }
    static public function close(_client:Client):stdgo.Error {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>);
        return stdgo._internal.net.rpc.Rpc_client_static_extension.Client_static_extension.close(_client);
    }
    static public function _input(_client:Client):Void {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>);
        stdgo._internal.net.rpc.Rpc_client_static_extension.Client_static_extension._input(_client);
    }
    static public function _send(_client:Client, _call:Call):Void {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>);
        final _call = (_call : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>);
        stdgo._internal.net.rpc.Rpc_client_static_extension.Client_static_extension._send(_client, _call);
    }
}
@:dox(hide) typedef T_gobClientCodecPointer = stdgo._internal.net.rpc.Rpc_t_gobclientcodecpointer.T_gobClientCodecPointer;
@:dox(hide) class T_gobClientCodec_static_extension {
    static public function close(_c:T_gobClientCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>);
        return stdgo._internal.net.rpc.Rpc_t_gobclientcodec_static_extension.T_gobClientCodec_static_extension.close(_c);
    }
    static public function readResponseBody(_c:T_gobClientCodec, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_t_gobclientcodec_static_extension.T_gobClientCodec_static_extension.readResponseBody(_c, _body);
    }
    static public function readResponseHeader(_c:T_gobClientCodec, _r:Response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        return stdgo._internal.net.rpc.Rpc_t_gobclientcodec_static_extension.T_gobClientCodec_static_extension.readResponseHeader(_c, _r);
    }
    static public function writeRequest(_c:T_gobClientCodec, _r:Request, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_t_gobclientcodec_static_extension.T_gobClientCodec_static_extension.writeRequest(_c, _r, _body);
    }
}
@:dox(hide) typedef T_debugMethodPointer = stdgo._internal.net.rpc.Rpc_t_debugmethodpointer.T_debugMethodPointer;
@:dox(hide) class T_debugMethod_static_extension {

}
@:dox(hide) typedef T_debugServicePointer = stdgo._internal.net.rpc.Rpc_t_debugservicepointer.T_debugServicePointer;
@:dox(hide) class T_debugService_static_extension {

}
@:dox(hide) typedef T_debugHTTPPointer = stdgo._internal.net.rpc.Rpc_t_debughttppointer.T_debugHTTPPointer;
@:dox(hide) class T_debugHTTP_static_extension {
    static public function serveHTTP(_server:T_debugHTTP, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo._internal.net.http.Http_request.Request):Void {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.serveHTTP(_server, _w, _req);
    }
    public static function _sendResponse(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:stdgo._internal.sync.Sync_mutex.Mutex, _1:Request, _2:stdgo.AnyInterface, _3:ServerCodec, _4:String):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        final _2 = (_2 : stdgo.AnyInterface);
        final _4 = (_4 : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._sendResponse(__self__, _0, _1, _2, _3, _4);
    }
    public static function _register(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:stdgo.AnyInterface, _1:String, _2:Bool):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._register(__self__, _0, _1, _2);
    }
    public static function _readRequestHeader(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:ServerCodec):stdgo.Tuple.Tuple5<T_service, T_methodType, Request, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._readRequestHeader(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _readRequest(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:ServerCodec):{ var _0 : T_service; var _1 : T_methodType; var _2 : Request; var _3 : stdgo._internal.reflect.Reflect_value.Value; var _4 : stdgo._internal.reflect.Reflect_value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._readRequest(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6 };
        };
    }
    public static function _getResponse(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP):Response {
        return stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._getResponse(__self__);
    }
    public static function _getRequest(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP):Request {
        return stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._getRequest(__self__);
    }
    public static function _freeResponse(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:Response):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._freeResponse(__self__, _0);
    }
    public static function _freeRequest(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:Request):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension._freeRequest(__self__, _0);
    }
    public static function serveRequest(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.serveRequest(__self__, _0);
    }
    public static function serveConn(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.serveConn(__self__, _0);
    }
    public static function serveCodec(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:ServerCodec):Void {
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.serveCodec(__self__, _0);
    }
    public static function registerName(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:String, _1:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.registerName(__self__, _0, _1);
    }
    public static function register(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.register(__self__, _0);
    }
    public static function handleHTTP(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.handleHTTP(__self__, _0, _1);
    }
    public static function accept(__self__:stdgo._internal.net.rpc.Rpc_t_debughttp.T_debugHTTP, _0:stdgo._internal.net.Net_listener.Listener):Void {
        stdgo._internal.net.rpc.Rpc_t_debughttp_static_extension.T_debugHTTP_static_extension.accept(__self__, _0);
    }
}
@:dox(hide) typedef T_methodTypePointer = stdgo._internal.net.rpc.Rpc_t_methodtypepointer.T_methodTypePointer;
@:dox(hide) class T_methodType_static_extension {
    static public function numCalls(_m:T_methodType):std.UInt {
        final _m = (_m : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
        return stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension.numCalls(_m);
    }
    public static function _unlockSlow(__self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Void {
        stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Void {
        stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Bool {
        return stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Void {
        stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension.lock(__self__);
    }
}
@:dox(hide) typedef T_servicePointer = stdgo._internal.net.rpc.Rpc_t_servicepointer.T_servicePointer;
@:dox(hide) class T_service_static_extension {
    static public function _call(_s:T_service, _server:Server, _sending:stdgo._internal.sync.Sync_mutex.Mutex, _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup, _mtype:T_methodType, _req:Request, _argv:stdgo._internal.reflect.Reflect_value.Value, _replyv:stdgo._internal.reflect.Reflect_value.Value, _codec:ServerCodec):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>);
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _sending = (_sending : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>);
        final _mtype = (_mtype : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        stdgo._internal.net.rpc.Rpc_t_service_static_extension.T_service_static_extension._call(_s, _server, _sending, _wg, _mtype, _req, _argv, _replyv, _codec);
    }
}
typedef RequestPointer = stdgo._internal.net.rpc.Rpc_requestpointer.RequestPointer;
class Request_static_extension {

}
typedef ResponsePointer = stdgo._internal.net.rpc.Rpc_responsepointer.ResponsePointer;
class Response_static_extension {

}
typedef ServerPointer = stdgo._internal.net.rpc.Rpc_serverpointer.ServerPointer;
class Server_static_extension {
    static public function handleHTTP(_server:Server, _rpcPath:String, _debugPath:String):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _rpcPath = (_rpcPath : stdgo.GoString);
        final _debugPath = (_debugPath : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.handleHTTP(_server, _rpcPath, _debugPath);
    }
    static public function serveHTTP(_server:Server, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo._internal.net.http.Http_request.Request):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.serveHTTP(_server, _w, _req);
    }
    static public function accept(_server:Server, _lis:stdgo._internal.net.Net_listener.Listener):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.accept(_server, _lis);
    }
    static public function _readRequestHeader(_server:Server, _codec:ServerCodec):stdgo.Tuple.Tuple5<T_service, T_methodType, Request, Bool, stdgo.Error> {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._readRequestHeader(_server, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function _readRequest(_server:Server, _codec:ServerCodec):{ var _0 : T_service; var _1 : T_methodType; var _2 : Request; var _3 : stdgo._internal.reflect.Reflect_value.Value; var _4 : stdgo._internal.reflect.Reflect_value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._readRequest(_server, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6 };
        };
    }
    static public function _freeResponse(_server:Server, _resp:Response):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _resp = (_resp : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._freeResponse(_server, _resp);
    }
    static public function _getResponse(_server:Server):Response {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._getResponse(_server);
    }
    static public function _freeRequest(_server:Server, _req:Request):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._freeRequest(_server, _req);
    }
    static public function _getRequest(_server:Server):Request {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._getRequest(_server);
    }
    static public function serveRequest(_server:Server, _codec:ServerCodec):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        return stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.serveRequest(_server, _codec);
    }
    static public function serveCodec(_server:Server, _codec:ServerCodec):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.serveCodec(_server, _codec);
    }
    static public function serveConn(_server:Server, _conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.serveConn(_server, _conn);
    }
    static public function _sendResponse(_server:Server, _sending:stdgo._internal.sync.Sync_mutex.Mutex, _req:Request, _reply:stdgo.AnyInterface, _codec:ServerCodec, _errmsg:String):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _sending = (_sending : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        final _reply = (_reply : stdgo.AnyInterface);
        final _errmsg = (_errmsg : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._sendResponse(_server, _sending, _req, _reply, _codec, _errmsg);
    }
    static public function _register(_server:Server, _rcvr:stdgo.AnyInterface, _name:String, _useName:Bool):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension._register(_server, _rcvr, _name, _useName);
    }
    static public function registerName(_server:Server, _name:String, _rcvr:stdgo.AnyInterface):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _name = (_name : stdgo.GoString);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.registerName(_server, _name, _rcvr);
    }
    static public function register(_server:Server, _rcvr:stdgo.AnyInterface):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_server_static_extension.Server_static_extension.register(_server, _rcvr);
    }
}
@:dox(hide) typedef T_gobServerCodecPointer = stdgo._internal.net.rpc.Rpc_t_gobservercodecpointer.T_gobServerCodecPointer;
@:dox(hide) class T_gobServerCodec_static_extension {
    static public function close(_c:T_gobServerCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>);
        return stdgo._internal.net.rpc.Rpc_t_gobservercodec_static_extension.T_gobServerCodec_static_extension.close(_c);
    }
    static public function writeResponse(_c:T_gobServerCodec, _r:Response, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_t_gobservercodec_static_extension.T_gobServerCodec_static_extension.writeResponse(_c, _r, _body);
    }
    static public function readRequestBody(_c:T_gobServerCodec, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_t_gobservercodec_static_extension.T_gobServerCodec_static_extension.readRequestBody(_c, _body);
    }
    static public function readRequestHeader(_c:T_gobServerCodec, _r:Request):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobservercodec.T_gobServerCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        return stdgo._internal.net.rpc.Rpc_t_gobservercodec_static_extension.T_gobServerCodec_static_extension.readRequestHeader(_c, _r);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.net.rpc.Rpc_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef ServerErrorPointer = stdgo._internal.net.rpc.Rpc_servererrorpointer.ServerErrorPointer;
class ServerError_static_extension {
    static public function error(_e:ServerError):String {
        return stdgo._internal.net.rpc.Rpc_servererror_static_extension.ServerError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_methodArrayPointer = stdgo._internal.net.rpc.Rpc_t_methodarraypointer.T_methodArrayPointer;
@:dox(hide) class T_methodArray_static_extension {
    static public function swap(_m:T_methodArray, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.rpc.Rpc_t_methodarray_static_extension.T_methodArray_static_extension.swap(_m, _i, _j);
    }
    static public function less(_m:T_methodArray, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.rpc.Rpc_t_methodarray_static_extension.T_methodArray_static_extension.less(_m, _i, _j);
    }
    static public function len(_m:T_methodArray):StdTypes.Int {
        return stdgo._internal.net.rpc.Rpc_t_methodarray_static_extension.T_methodArray_static_extension.len(_m);
    }
}
@:dox(hide) typedef T_serviceArrayPointer = stdgo._internal.net.rpc.Rpc_t_servicearraypointer.T_serviceArrayPointer;
@:dox(hide) class T_serviceArray_static_extension {
    static public function swap(_s:T_serviceArray, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.rpc.Rpc_t_servicearray_static_extension.T_serviceArray_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_serviceArray, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.rpc.Rpc_t_servicearray_static_extension.T_serviceArray_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_serviceArray):StdTypes.Int {
        return stdgo._internal.net.rpc.Rpc_t_servicearray_static_extension.T_serviceArray_static_extension.len(_s);
    }
}
/**
    * 
    * Package rpc provides access to the exported methods of an object across a
    * network or other I/O connection.  A server registers an object, making it visible
    * as a service with the name of the type of the object.  After registration, exported
    * methods of the object will be accessible remotely.  A server may register multiple
    * objects (services) of different types but it is an error to register multiple
    * objects of the same type.
    * 
    * Only methods that satisfy these criteria will be made available for remote access;
    * other methods will be ignored:
    * 
    *   - the method's type is exported.
    *   - the method is exported.
    *   - the method has two arguments, both exported (or builtin) types.
    *   - the method's second argument is a pointer.
    *   - the method has return type error.
    * 
    * In effect, the method must look schematically like
    * 
    * 	func (t *T) MethodName(argType T1, replyType *T2) error
    * 
    * where T1 and T2 can be marshaled by encoding/gob.
    * These requirements apply even if a different codec is used.
    * (In the future, these requirements may soften for custom codecs.)
    * 
    * The method's first argument represents the arguments provided by the caller; the
    * second argument represents the result parameters to be returned to the caller.
    * The method's return value, if non-nil, is passed back as a string that the client
    * sees as if created by errors.New.  If an error is returned, the reply parameter
    * will not be sent back to the client.
    * 
    * The server may handle requests on a single connection by calling ServeConn.  More
    * typically it will create a network listener and call Accept or, for an HTTP
    * listener, HandleHTTP and http.Serve.
    * 
    * A client wishing to use the service establishes a connection and then invokes
    * NewClient on the connection.  The convenience function Dial (DialHTTP) performs
    * both steps for a raw network connection (an HTTP connection).  The resulting
    * Client object has two methods, Call and Go, that specify the service and method to
    * call, a pointer containing the arguments, and a pointer to receive the result
    * parameters.
    * 
    * The Call method waits for the remote call to complete while the Go method
    * launches the call asynchronously and signals completion using the Call
    * structure's Done channel.
    * 
    * Unless an explicit codec is set up, package encoding/gob is used to
    * transport the data.
    * 
    * Here is a simple example.  A server wishes to export an object of type Arith:
    * 
    * 	package server
    * 
    * 	import "errors"
    * 
    * 	type Args struct {
    * 		A, B int
    * 	}
    * 
    * 	type Quotient struct {
    * 		Quo, Rem int
    * 	}
    * 
    * 	type Arith int
    * 
    * 	func (t *Arith) Multiply(args *Args, reply *int) error {
    * 		*reply = args.A * args.B
    * 		return nil
    * 	}
    * 
    * 	func (t *Arith) Divide(args *Args, quo *Quotient) error {
    * 		if args.B == 0 {
    * 			return errors.New("divide by zero")
    * 		}
    * 		quo.Quo = args.A / args.B
    * 		quo.Rem = args.A % args.B
    * 		return nil
    * 	}
    * 
    * The server calls (for HTTP service):
    * 
    * 	arith := new(Arith)
    * 	rpc.Register(arith)
    * 	rpc.HandleHTTP()
    * 	l, err := net.Listen("tcp", ":1234")
    * 	if err != nil {
    * 		log.Fatal("listen error:", err)
    * 	}
    * 	go http.Serve(l, nil)
    * 
    * At this point, clients can see a service "Arith" with methods "Arith.Multiply" and
    * "Arith.Divide".  To invoke one, a client first dials the server:
    * 
    * 	client, err := rpc.DialHTTP("tcp", serverAddress + ":1234")
    * 	if err != nil {
    * 		log.Fatal("dialing:", err)
    * 	}
    * 
    * Then it can make a remote call:
    * 
    * 	// Synchronous call
    * 	args := &server.Args{7,8}
    * 	var reply int
    * 	err = client.Call("Arith.Multiply", args, &reply)
    * 	if err != nil {
    * 		log.Fatal("arith error:", err)
    * 	}
    * 	fmt.Printf("Arith: %d*%d=%d", args.A, args.B, reply)
    * 
    * or
    * 
    * 	// Asynchronous call
    * 	quotient := new(Quotient)
    * 	divCall := client.Go("Arith.Divide", args, quotient, nil)
    * 	replyCall := <-divCall.Done	// will be equal to divCall
    * 	// check errors, print, etc.
    * 
    * A server implementation will often provide a simple, type-safe wrapper for the
    * client.
    * 
    * The net/rpc package is frozen and is not accepting new features.
    * 
**/
class Rpc {
    /**
        * NewClient returns a new Client to handle requests to the
        * set of services at the other end of the connection.
        * It adds a buffer to the write side of the connection so
        * the header and payload are sent as a unit.
        * 
        * The read and write halves of the connection are serialized independently,
        * so no interlocking is required. However each half may be accessed
        * concurrently so the implementation of conn should protect against
        * concurrent reads or concurrent writes.
    **/
    static public inline function newClient(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Client {
        return stdgo._internal.net.rpc.Rpc_newclient.newClient(_conn);
    }
    /**
        * NewClientWithCodec is like NewClient but uses the specified
        * codec to encode requests and decode responses.
    **/
    static public inline function newClientWithCodec(_codec:ClientCodec):Client {
        return stdgo._internal.net.rpc.Rpc_newclientwithcodec.newClientWithCodec(_codec);
    }
    /**
        * DialHTTP connects to an HTTP RPC server at the specified network address
        * listening on the default HTTP RPC path.
    **/
    static public inline function dialHTTP(_network:String, _address:String):stdgo.Tuple<Client, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_dialhttp.dialHTTP(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * DialHTTPPath connects to an HTTP RPC server
        * at the specified network address and path.
    **/
    static public inline function dialHTTPPath(_network:String, _address:String, _path:String):stdgo.Tuple<Client, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_dialhttppath.dialHTTPPath(_network, _address, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Dial connects to an RPC server at the specified network address.
    **/
    static public inline function dial(_network:String, _address:String):stdgo.Tuple<Client, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewServer returns a new Server.
    **/
    static public inline function newServer():Server {
        return stdgo._internal.net.rpc.Rpc_newserver.newServer();
    }
    /**
        * Register publishes the receiver's methods in the DefaultServer.
    **/
    static public inline function register(_rcvr:stdgo.AnyInterface):stdgo.Error {
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_register.register(_rcvr);
    }
    /**
        * RegisterName is like Register but uses the provided name for the type
        * instead of the receiver's concrete type.
    **/
    static public inline function registerName(_name:String, _rcvr:stdgo.AnyInterface):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_registername.registerName(_name, _rcvr);
    }
    /**
        * ServeConn runs the DefaultServer on a single connection.
        * ServeConn blocks, serving the connection until the client hangs up.
        * The caller typically invokes ServeConn in a go statement.
        * ServeConn uses the gob wire format (see package gob) on the
        * connection. To use an alternate codec, use ServeCodec.
        * See NewClient's comment for information about concurrent access.
    **/
    static public inline function serveConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_serveconn.serveConn(_conn);
    }
    /**
        * ServeCodec is like ServeConn but uses the specified codec to
        * decode requests and encode responses.
    **/
    static public inline function serveCodec(_codec:ServerCodec):Void {
        stdgo._internal.net.rpc.Rpc_servecodec.serveCodec(_codec);
    }
    /**
        * ServeRequest is like ServeCodec but synchronously serves a single request.
        * It does not close the codec upon completion.
    **/
    static public inline function serveRequest(_codec:ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_serverequest.serveRequest(_codec);
    }
    /**
        * Accept accepts connections on the listener and serves requests
        * to DefaultServer for each incoming connection.
        * Accept blocks; the caller typically invokes it in a go statement.
    **/
    static public inline function accept(_lis:stdgo._internal.net.Net_listener.Listener):Void {
        stdgo._internal.net.rpc.Rpc_accept.accept(_lis);
    }
    /**
        * HandleHTTP registers an HTTP handler for RPC messages to DefaultServer
        * on DefaultRPCPath and a debugging handler on DefaultDebugPath.
        * It is still necessary to invoke http.Serve(), typically in a go statement.
    **/
    static public inline function handleHTTP():Void {
        stdgo._internal.net.rpc.Rpc_handlehttp.handleHTTP();
    }
}
