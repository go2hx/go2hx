package stdgo.net.rpc.jsonrpc;
var nil(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
private function get_nil():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_nil.nil;
private function set_nil(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_nil.nil = v;
        return v;
    }
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientCodec_static_extension) abstract T_clientCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec {
    public var _dec(get, set) : stdgo._internal.encoding.json.Json_Decoder.Decoder;
    function get__dec():stdgo._internal.encoding.json.Json_Decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.json.Json_Decoder.Decoder):stdgo._internal.encoding.json.Json_Decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.json.Json_Encoder.Encoder;
    function get__enc():stdgo._internal.encoding.json.Json_Encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.json.Json_Encoder.Encoder):stdgo._internal.encoding.json.Json_Encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
        return v;
    }
    public var _c(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__c():stdgo._internal.io.Io_Closer.Closer return this._c;
    function set__c(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._c = v;
        return v;
    }
    public var _req(get, set) : T_clientRequest;
    function get__req():T_clientRequest return this._req;
    function set__req(v:T_clientRequest):T_clientRequest {
        this._req = v;
        return v;
    }
    public var _resp(get, set) : T_clientResponse;
    function get__resp():T_clientResponse return this._resp;
    function set__resp(v:T_clientResponse):T_clientResponse {
        this._resp = v;
        return v;
    }
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _pending(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>;
    function get__pending():stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> return this._pending;
    function set__pending(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> {
        this._pending = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
        return v;
    }
    public function new(?_dec:stdgo._internal.encoding.json.Json_Decoder.Decoder, ?_enc:stdgo._internal.encoding.json.Json_Encoder.Encoder, ?_c:stdgo._internal.io.Io_Closer.Closer, ?_req:T_clientRequest, ?_resp:T_clientResponse, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec((_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>), _c, _req, _resp, _mutex, (_pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientRequest_static_extension) abstract T_clientRequest(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var params(get, set) : haxe.ds.Vector<stdgo.AnyInterface>;
    function get_params():haxe.ds.Vector<stdgo.AnyInterface> return haxe.ds.Vector.fromArrayCopy([for (i in this.params) i]);
    function set_params(v:haxe.ds.Vector<stdgo.AnyInterface>):haxe.ds.Vector<stdgo.AnyInterface> {
        this.params = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.GoArray<stdgo.AnyInterface>);
        return v;
    }
    public var id(get, set) : haxe.UInt64;
    function get_id():haxe.UInt64 return this.id;
    function set_id(v:haxe.UInt64):haxe.UInt64 {
        this.id = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?method:String, ?params:haxe.ds.Vector<stdgo.AnyInterface>, ?id:haxe.UInt64) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest((method : stdgo.GoString), ([for (i in params) (i : stdgo.AnyInterface)] : stdgo.GoArray<stdgo.AnyInterface>), (id : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientResponse_static_extension) abstract T_clientResponse(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse {
    public var id(get, set) : haxe.UInt64;
    function get_id():haxe.UInt64 return this.id;
    function set_id(v:haxe.UInt64):haxe.UInt64 {
        this.id = (v : stdgo.GoUInt64);
        return v;
    }
    public var result(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_result():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.result;
    function set_result(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.result = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var error(get, set) : stdgo.AnyInterface;
    function get_error():stdgo.AnyInterface return this.error;
    function set_error(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.error = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?id:haxe.UInt64, ?result:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?error:stdgo.AnyInterface) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse((id : stdgo.GoUInt64), (result : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), (error : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverCodec_static_extension) abstract T_serverCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec {
    public var _dec(get, set) : stdgo._internal.encoding.json.Json_Decoder.Decoder;
    function get__dec():stdgo._internal.encoding.json.Json_Decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.json.Json_Decoder.Decoder):stdgo._internal.encoding.json.Json_Decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.json.Json_Encoder.Encoder;
    function get__enc():stdgo._internal.encoding.json.Json_Encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.json.Json_Encoder.Encoder):stdgo._internal.encoding.json.Json_Encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
        return v;
    }
    public var _c(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__c():stdgo._internal.io.Io_Closer.Closer return this._c;
    function set__c(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._c = v;
        return v;
    }
    public var _req(get, set) : T_serverRequest;
    function get__req():T_serverRequest return this._req;
    function set__req(v:T_serverRequest):T_serverRequest {
        this._req = v;
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
        this._seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pending(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>;
    function get__pending():stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>> return this._pending;
    function set__pending(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>> {
        this._pending = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>);
        return v;
    }
    public function new(?_dec:stdgo._internal.encoding.json.Json_Decoder.Decoder, ?_enc:stdgo._internal.encoding.json.Json_Encoder.Encoder, ?_c:stdgo._internal.io.Io_Closer.Closer, ?_req:T_serverRequest, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_seq:haxe.UInt64, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec((_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>), _c, _req, _mutex, (_seq : stdgo.GoUInt64), (_pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverRequest_static_extension) abstract T_serverRequest(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var params(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_params():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.params;
    function set_params(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.params = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var id(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_id():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.id;
    function set_id(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.id = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public function new(?method:String, ?params:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?id:stdgo._internal.encoding.json.Json_RawMessage.RawMessage) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest((method : stdgo.GoString), (params : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), (id : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverResponse_static_extension) abstract T_serverResponse(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse {
    public var id(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_id():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.id;
    function set_id(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.id = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var result(get, set) : stdgo.AnyInterface;
    function get_result():stdgo.AnyInterface return this.result;
    function set_result(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.result = (v : stdgo.AnyInterface);
        return v;
    }
    public var error(get, set) : stdgo.AnyInterface;
    function get_error():stdgo.AnyInterface return this.error;
    function set_error(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.error = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?result:stdgo.AnyInterface, ?error:stdgo.AnyInterface) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse((id : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), (result : stdgo.AnyInterface), (error : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_clientCodecPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodecPointer.T_clientCodecPointer;
class T_clientCodec_static_extension {
    static public function close(_c:T_clientCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.close(_c);
    }
    static public function readResponseBody(_c:T_clientCodec, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.readResponseBody(_c, _x);
    }
    static public function readResponseHeader(_c:T_clientCodec, _r:stdgo._internal.net.rpc.Rpc_Response.Response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.readResponseHeader(_c, _r);
    }
    static public function writeRequest(_c:T_clientCodec, _r:stdgo._internal.net.rpc.Rpc_Request.Request, _param:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        final _param = (_param : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.writeRequest(_c, _r, _param);
    }
}
typedef T_clientRequestPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequestPointer.T_clientRequestPointer;
class T_clientRequest_static_extension {

}
typedef T_clientResponsePointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponsePointer.T_clientResponsePointer;
class T_clientResponse_static_extension {
    static public function _reset(_r:T_clientResponse):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse>);
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse_static_extension.T_clientResponse_static_extension._reset(_r);
    }
}
typedef T_serverCodecPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodecPointer.T_serverCodecPointer;
class T_serverCodec_static_extension {
    static public function close(_c:T_serverCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.close(_c);
    }
    static public function writeResponse(_c:T_serverCodec, _r:stdgo._internal.net.rpc.Rpc_Response.Response, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.writeResponse(_c, _r, _x);
    }
    static public function readRequestBody(_c:T_serverCodec, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.readRequestBody(_c, _x);
    }
    static public function readRequestHeader(_c:T_serverCodec, _r:stdgo._internal.net.rpc.Rpc_Request.Request):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.readRequestHeader(_c, _r);
    }
}
typedef T_serverRequestPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequestPointer.T_serverRequestPointer;
class T_serverRequest_static_extension {
    static public function _reset(_r:T_serverRequest):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest>);
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest_static_extension.T_serverRequest_static_extension._reset(_r);
    }
}
typedef T_serverResponsePointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponsePointer.T_serverResponsePointer;
class T_serverResponse_static_extension {

}
/**
    Package jsonrpc implements a JSON-RPC 1.0 ClientCodec and ServerCodec
    for the rpc package.
    For JSON-RPC 2.0 support, see https://godoc.org/?q=json-rpc+2.0
**/
class Jsonrpc {
    /**
        NewClientCodec returns a new rpc.ClientCodec using JSON-RPC on conn.
    **/
    static public inline function newClientCodec(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClientCodec.newClientCodec(_conn);
    }
    /**
        NewClient returns a new rpc.Client to handle requests to the
        set of services at the other end of the connection.
    **/
    static public inline function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_Client.Client {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClient.newClient(_conn);
    }
    /**
        Dial connects to a JSON-RPC server at the specified network address.
    **/
    static public inline function dial(_network:String, _address:String):stdgo.Tuple<stdgo._internal.net.rpc.Rpc_Client.Client, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewServerCodec returns a new rpc.ServerCodec using JSON-RPC on conn.
    **/
    static public inline function newServerCodec(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newServerCodec.newServerCodec(_conn);
    }
    /**
        ServeConn runs the JSON-RPC server on a single connection.
        ServeConn blocks, serving the connection until the client hangs up.
        The caller typically invokes ServeConn in a go statement.
    **/
    static public inline function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_serveConn.serveConn(_conn);
    }
}
