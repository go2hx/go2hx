package stdgo._internal.net.rpc.jsonrpc;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec_static_extension.T_serverCodec_static_extension) class T_serverCodec {
    public var _dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
    public var _c : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public var _req : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest = ({} : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest);
    public var _mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _seq : stdgo.GoUInt64 = 0;
    public var _pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>);
    public function new(?_dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, ?_enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, ?_c:stdgo._internal.io.Io_closer.Closer, ?_req:stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest, ?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_seq:stdgo.GoUInt64, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>) {
        if (_dec != null) this._dec = _dec;
        if (_enc != null) this._enc = _enc;
        if (_c != null) this._c = _c;
        if (_req != null) this._req = _req;
        if (_mutex != null) this._mutex = _mutex;
        if (_seq != null) this._seq = _seq;
        if (_pending != null) this._pending = _pending;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverCodec(_dec, _enc, _c, _req, _mutex, _seq, _pending);
    }
}
