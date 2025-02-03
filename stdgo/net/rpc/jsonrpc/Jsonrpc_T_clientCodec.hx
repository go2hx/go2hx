package stdgo.net.rpc.jsonrpc;
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
