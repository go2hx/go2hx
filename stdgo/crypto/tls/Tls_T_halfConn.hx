package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_halfConn_static_extension) abstract T_halfConn(stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn) from stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn to stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn {
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _version(get, set) : std.UInt;
    function get__version():std.UInt return this._version;
    function set__version(v:std.UInt):std.UInt {
        this._version = (v : stdgo.GoUInt16);
        return v;
    }
    public var _cipher(get, set) : stdgo.AnyInterface;
    function get__cipher():stdgo.AnyInterface return this._cipher;
    function set__cipher(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._cipher = (v : stdgo.AnyInterface);
        return v;
    }
    public var _mac(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__mac():stdgo._internal.hash.Hash_Hash.Hash return this._mac;
    function set__mac(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._mac = v;
        return v;
    }
    public var _seq(get, set) : haxe.ds.Vector<std.UInt>;
    function get__seq():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._seq) i]);
    function set__seq(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._seq = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _scratchBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratchBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratchBuf) i]);
    function set__scratchBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratchBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nextCipher(get, set) : stdgo.AnyInterface;
    function get__nextCipher():stdgo.AnyInterface return this._nextCipher;
    function set__nextCipher(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._nextCipher = (v : stdgo.AnyInterface);
        return v;
    }
    public var _nextMac(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__nextMac():stdgo._internal.hash.Hash_Hash.Hash return this._nextMac;
    function set__nextMac(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._nextMac = v;
        return v;
    }
    public var _level(get, set) : QUICEncryptionLevel;
    function get__level():QUICEncryptionLevel return this._level;
    function set__level(v:QUICEncryptionLevel):QUICEncryptionLevel {
        this._level = v;
        return v;
    }
    public var _trafficSecret(get, set) : Array<std.UInt>;
    function get__trafficSecret():Array<std.UInt> return [for (i in this._trafficSecret) i];
    function set__trafficSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._trafficSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error, ?_version:std.UInt, ?_cipher:stdgo.AnyInterface, ?_mac:stdgo._internal.hash.Hash_Hash.Hash, ?_seq:haxe.ds.Vector<std.UInt>, ?_scratchBuf:haxe.ds.Vector<std.UInt>, ?_nextCipher:stdgo.AnyInterface, ?_nextMac:stdgo._internal.hash.Hash_Hash.Hash, ?_level:QUICEncryptionLevel, ?_trafficSecret:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn(
mutex,
(_err : stdgo.Error),
(_version : stdgo.GoUInt16),
(_cipher : stdgo.AnyInterface),
_mac,
([for (i in _seq) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _scratchBuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_nextCipher : stdgo.AnyInterface),
_nextMac,
_level,
([for (i in _trafficSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
