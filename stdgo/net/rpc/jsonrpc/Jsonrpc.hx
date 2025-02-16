package stdgo.net.rpc.jsonrpc;
var nil(get, set) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
private function get_nil():stdgo._internal.encoding.json.Json_rawmessage.RawMessage return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_nil.nil;
private function set_nil(v:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):stdgo._internal.encoding.json.Json_rawmessage.RawMessage {
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_nil.nil = v;
        return v;
    }
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientCodec_static_extension) @:dox(hide) abstract T_clientCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec {
    public var _dec(get, set) : stdgo._internal.encoding.json.Json_decoder.Decoder;
    function get__dec():stdgo._internal.encoding.json.Json_decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.json.Json_decoder.Decoder):stdgo._internal.encoding.json.Json_decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.json.Json_encoder.Encoder;
    function get__enc():stdgo._internal.encoding.json.Json_encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.json.Json_encoder.Encoder):stdgo._internal.encoding.json.Json_encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
        return v;
    }
    public var _c(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__c():stdgo._internal.io.Io_closer.Closer return this._c;
    function set__c(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
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
    public var _mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _pending(get, set) : Map<haxe.UInt64, String>;
    function get__pending():Map<haxe.UInt64, String> return {
        final __obj__:Map<haxe.UInt64, String> = [];
        for (key => value in this._pending) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__pending(v:Map<haxe.UInt64, String>):Map<haxe.UInt64, String> {
        this._pending = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_dec:stdgo._internal.encoding.json.Json_decoder.Decoder, ?_enc:stdgo._internal.encoding.json.Json_encoder.Encoder, ?_c:stdgo._internal.io.Io_closer.Closer, ?_req:T_clientRequest, ?_resp:T_clientResponse, ?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_pending:Map<haxe.UInt64, String>) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec((_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>), _c, _req, _resp, _mutex, {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>();
        for (key => value in _pending) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.GoString);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientRequest_static_extension) @:dox(hide) abstract T_clientRequest(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientrequest.T_clientRequest) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientrequest.T_clientRequest to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientrequest.T_clientRequest {
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
    public function new(?method:String, ?params:haxe.ds.Vector<stdgo.AnyInterface>, ?id:haxe.UInt64) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientrequest.T_clientRequest((method : stdgo.GoString), ([for (i in params) (i : stdgo.AnyInterface)] : stdgo.GoArray<stdgo.AnyInterface>), (id : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientResponse_static_extension) @:dox(hide) abstract T_clientResponse(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse {
    public var id(get, set) : haxe.UInt64;
    function get_id():haxe.UInt64 return this.id;
    function set_id(v:haxe.UInt64):haxe.UInt64 {
        this.id = (v : stdgo.GoUInt64);
        return v;
    }
    public var result(get, set) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
    function get_result():stdgo._internal.encoding.json.Json_rawmessage.RawMessage return this.result;
    function set_result(v:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):stdgo._internal.encoding.json.Json_rawmessage.RawMessage {
        this.result = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        return v;
    }
    public var error(get, set) : stdgo.AnyInterface;
    function get_error():stdgo.AnyInterface return this.error;
    function set_error(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.error = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?id:haxe.UInt64, ?result:stdgo._internal.encoding.json.Json_rawmessage.RawMessage, ?error:stdgo.AnyInterface) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse((id : stdgo.GoUInt64), (result : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>), (error : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverCodec_static_extension) @:dox(hide) abstract T_serverCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec {
    public var _dec(get, set) : stdgo._internal.encoding.json.Json_decoder.Decoder;
    function get__dec():stdgo._internal.encoding.json.Json_decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.json.Json_decoder.Decoder):stdgo._internal.encoding.json.Json_decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.json.Json_encoder.Encoder;
    function get__enc():stdgo._internal.encoding.json.Json_encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.json.Json_encoder.Encoder):stdgo._internal.encoding.json.Json_encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
        return v;
    }
    public var _c(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__c():stdgo._internal.io.Io_closer.Closer return this._c;
    function set__c(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this._c = v;
        return v;
    }
    public var _req(get, set) : T_serverRequest;
    function get__req():T_serverRequest return this._req;
    function set__req(v:T_serverRequest):T_serverRequest {
        this._req = v;
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
    public var _pending(get, set) : Map<haxe.UInt64, stdgo._internal.encoding.json.Json_rawmessage.RawMessage>;
    function get__pending():Map<haxe.UInt64, stdgo._internal.encoding.json.Json_rawmessage.RawMessage> return {
        final __obj__:Map<haxe.UInt64, stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = [];
        for (key => value in this._pending) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__pending(v:Map<haxe.UInt64, stdgo._internal.encoding.json.Json_rawmessage.RawMessage>):Map<haxe.UInt64, stdgo._internal.encoding.json.Json_rawmessage.RawMessage> {
        this._pending = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_dec:stdgo._internal.encoding.json.Json_decoder.Decoder, ?_enc:stdgo._internal.encoding.json.Json_encoder.Encoder, ?_c:stdgo._internal.io.Io_closer.Closer, ?_req:T_serverRequest, ?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_seq:haxe.UInt64, ?_pending:Map<haxe.UInt64, stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec((_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>), _c, _req, _mutex, (_seq : stdgo.GoUInt64), {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>();
        for (key => value in _pending) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverRequest_static_extension) @:dox(hide) abstract T_serverRequest(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var params(get, set) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
    function get_params():stdgo._internal.encoding.json.Json_rawmessage.RawMessage return this.params;
    function set_params(v:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):stdgo._internal.encoding.json.Json_rawmessage.RawMessage {
        this.params = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        return v;
    }
    public var id(get, set) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
    function get_id():stdgo._internal.encoding.json.Json_rawmessage.RawMessage return this.id;
    function set_id(v:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):stdgo._internal.encoding.json.Json_rawmessage.RawMessage {
        this.id = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        return v;
    }
    public function new(?method:String, ?params:stdgo._internal.encoding.json.Json_rawmessage.RawMessage, ?id:stdgo._internal.encoding.json.Json_rawmessage.RawMessage) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest((method : stdgo.GoString), (params : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>), (id : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverResponse_static_extension) @:dox(hide) abstract T_serverResponse(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse.T_serverResponse) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse.T_serverResponse to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse.T_serverResponse {
    public var id(get, set) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
    function get_id():stdgo._internal.encoding.json.Json_rawmessage.RawMessage return this.id;
    function set_id(v:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):stdgo._internal.encoding.json.Json_rawmessage.RawMessage {
        this.id = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
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
    public function new(?id:stdgo._internal.encoding.json.Json_rawmessage.RawMessage, ?result:stdgo.AnyInterface, ?error:stdgo.AnyInterface) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse.T_serverResponse((id : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>), (result : stdgo.AnyInterface), (error : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_clientCodecPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodecpointer.T_clientCodecPointer;
@:dox(hide) class T_clientCodec_static_extension {
    static public function close(_c:T_clientCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec_static_extension.T_clientCodec_static_extension.close(_c);
    }
    static public function readResponseBody(_c:T_clientCodec, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec_static_extension.T_clientCodec_static_extension.readResponseBody(_c, _x);
    }
    static public function readResponseHeader(_c:T_clientCodec, _r:stdgo._internal.net.rpc.Rpc_response.Response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec_static_extension.T_clientCodec_static_extension.readResponseHeader(_c, _r);
    }
    static public function writeRequest(_c:T_clientCodec, _r:stdgo._internal.net.rpc.Rpc_request.Request, _param:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        final _param = (_param : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec_static_extension.T_clientCodec_static_extension.writeRequest(_c, _r, _param);
    }
}
@:dox(hide) typedef T_clientRequestPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientrequestpointer.T_clientRequestPointer;
@:dox(hide) class T_clientRequest_static_extension {

}
@:dox(hide) typedef T_clientResponsePointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponsepointer.T_clientResponsePointer;
@:dox(hide) class T_clientResponse_static_extension {
    static public function _reset(_r:T_clientResponse):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse>);
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse_static_extension.T_clientResponse_static_extension._reset(_r);
    }
}
@:dox(hide) typedef T_serverCodecPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodecpointer.T_serverCodecPointer;
@:dox(hide) class T_serverCodec_static_extension {
    static public function close(_c:T_serverCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec_static_extension.T_serverCodec_static_extension.close(_c);
    }
    static public function writeResponse(_c:T_serverCodec, _r:stdgo._internal.net.rpc.Rpc_response.Response, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec_static_extension.T_serverCodec_static_extension.writeResponse(_c, _r, _x);
    }
    static public function readRequestBody(_c:T_serverCodec, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec_static_extension.T_serverCodec_static_extension.readRequestBody(_c, _x);
    }
    static public function readRequestHeader(_c:T_serverCodec, _r:stdgo._internal.net.rpc.Rpc_request.Request):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec_static_extension.T_serverCodec_static_extension.readRequestHeader(_c, _r);
    }
}
@:dox(hide) typedef T_serverRequestPointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequestpointer.T_serverRequestPointer;
@:dox(hide) class T_serverRequest_static_extension {
    static public function _reset(_r:T_serverRequest):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest>);
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest_static_extension.T_serverRequest_static_extension._reset(_r);
    }
}
@:dox(hide) typedef T_serverResponsePointer = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponsepointer.T_serverResponsePointer;
@:dox(hide) class T_serverResponse_static_extension {

}
/**
    * Package jsonrpc implements a JSON-RPC 1.0 ClientCodec and ServerCodec
    * for the rpc package.
    * For JSON-RPC 2.0 support, see https://godoc.org/?q=json-rpc+2.0
**/
class Jsonrpc {
    /**
        * NewClientCodec returns a new rpc.ClientCodec using JSON-RPC on conn.
    **/
    static public inline function newClientCodec(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newclientcodec.newClientCodec(_conn);
    }
    /**
        * NewClient returns a new rpc.Client to handle requests to the
        * set of services at the other end of the connection.
    **/
    static public inline function newClient(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_client.Client {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newclient.newClient(_conn);
    }
    /**
        * Dial connects to a JSON-RPC server at the specified network address.
    **/
    static public inline function dial(_network:String, _address:String):stdgo.Tuple<stdgo._internal.net.rpc.Rpc_client.Client, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewServerCodec returns a new rpc.ServerCodec using JSON-RPC on conn.
    **/
    static public inline function newServerCodec(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newservercodec.newServerCodec(_conn);
    }
    /**
        * ServeConn runs the JSON-RPC server on a single connection.
        * ServeConn blocks, serving the connection until the client hangs up.
        * The caller typically invokes ServeConn in a go statement.
    **/
    static public inline function serveConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_serveconn.serveConn(_conn);
    }
}
