package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension) class T_serverCodec {
    public var _dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
    public var _c : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public var _req : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest = ({} : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest);
    public var _mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _seq : stdgo.GoUInt64 = 0;
    public var _pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>);
    public function new(?_dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>, ?_enc:stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>, ?_c:stdgo._internal.io.Io_Closer.Closer, ?_req:stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_seq:stdgo.GoUInt64, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>) {
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
