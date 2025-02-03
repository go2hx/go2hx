package stdgo.net.rpc.jsonrpc;
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
