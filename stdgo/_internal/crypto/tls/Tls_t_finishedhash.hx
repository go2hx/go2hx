package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_finishedhash_static_extension.T_finishedHash_static_extension) class T_finishedHash {
    public var _client : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _server : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _clientMD5 : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _serverMD5 : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _buffer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _version : stdgo.GoUInt16 = 0;
    public var _prf : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void = null;
    public function new(?_client:stdgo._internal.hash.Hash_hash.Hash, ?_server:stdgo._internal.hash.Hash_hash.Hash, ?_clientMD5:stdgo._internal.hash.Hash_hash.Hash, ?_serverMD5:stdgo._internal.hash.Hash_hash.Hash, ?_buffer:stdgo.Slice<stdgo.GoUInt8>, ?_version:stdgo.GoUInt16, ?_prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void) {
        if (_client != null) this._client = _client;
        if (_server != null) this._server = _server;
        if (_clientMD5 != null) this._clientMD5 = _clientMD5;
        if (_serverMD5 != null) this._serverMD5 = _serverMD5;
        if (_buffer != null) this._buffer = _buffer;
        if (_version != null) this._version = _version;
        if (_prf != null) this._prf = _prf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_finishedHash(_client, _server, _clientMD5, _serverMD5, _buffer, _version, _prf);
    }
}
