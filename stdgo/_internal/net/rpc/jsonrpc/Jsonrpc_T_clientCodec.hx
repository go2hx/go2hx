package stdgo._internal.net.rpc.jsonrpc;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension) class T_clientCodec {
    public var _dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
    public var _c : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public var _req : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest = ({} : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest);
    public var _resp : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse = ({} : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse);
    public var _mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
    public function new(?_dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>, ?_enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>, ?_c:stdgo._internal.io.Io_Closer.Closer, ?_req:stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest, ?_resp:stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>) {
        if (_dec != null) this._dec = _dec;
        if (_enc != null) this._enc = _enc;
        if (_c != null) this._c = _c;
        if (_req != null) this._req = _req;
        if (_resp != null) this._resp = _resp;
        if (_mutex != null) this._mutex = _mutex;
        if (_pending != null) this._pending = _pending;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_clientCodec(_dec, _enc, _c, _req, _resp, _mutex, _pending);
    }
}
