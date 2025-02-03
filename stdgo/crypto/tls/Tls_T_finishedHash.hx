package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_finishedHash_static_extension) abstract T_finishedHash(stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash) from stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash to stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash {
    public var _client(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__client():stdgo._internal.hash.Hash_Hash.Hash return this._client;
    function set__client(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._client = v;
        return v;
    }
    public var _server(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__server():stdgo._internal.hash.Hash_Hash.Hash return this._server;
    function set__server(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._server = v;
        return v;
    }
    public var _clientMD5(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__clientMD5():stdgo._internal.hash.Hash_Hash.Hash return this._clientMD5;
    function set__clientMD5(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._clientMD5 = v;
        return v;
    }
    public var _serverMD5(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__serverMD5():stdgo._internal.hash.Hash_Hash.Hash return this._serverMD5;
    function set__serverMD5(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._serverMD5 = v;
        return v;
    }
    public var _buffer(get, set) : Array<std.UInt>;
    function get__buffer():Array<std.UInt> return [for (i in this._buffer) i];
    function set__buffer(v:Array<std.UInt>):Array<std.UInt> {
        this._buffer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _version(get, set) : std.UInt;
    function get__version():std.UInt return this._version;
    function set__version(v:std.UInt):std.UInt {
        this._version = (v : stdgo.GoUInt16);
        return v;
    }
    public var _prf(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void;
    function get__prf():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void return (_0, _1, _2, _3) -> this._prf([for (i in _0) i], [for (i in _1) i], [for (i in _2) i], [for (i in _3) i]);
    function set__prf(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void {
        this._prf = v;
        return v;
    }
    public function new(?_client:stdgo._internal.hash.Hash_Hash.Hash, ?_server:stdgo._internal.hash.Hash_Hash.Hash, ?_clientMD5:stdgo._internal.hash.Hash_Hash.Hash, ?_serverMD5:stdgo._internal.hash.Hash_Hash.Hash, ?_buffer:Array<std.UInt>, ?_version:std.UInt, ?_prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void) this = new stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash(_client, _server, _clientMD5, _serverMD5, ([for (i in _buffer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_version : stdgo.GoUInt16), _prf);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
