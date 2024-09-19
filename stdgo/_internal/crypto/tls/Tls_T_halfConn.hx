package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension) class T_halfConn {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _version : stdgo.GoUInt16 = 0;
    public var _cipher : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _mac : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _seq : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
    public var _scratchBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(13, 13, ...[for (i in 0 ... 13) (0 : stdgo.GoUInt8)]);
    public var _nextCipher : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _nextMac : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _level : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel);
    public var _trafficSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error, ?_version:stdgo.GoUInt16, ?_cipher:stdgo.AnyInterface, ?_mac:stdgo._internal.hash.Hash_Hash.Hash, ?_seq:stdgo.GoArray<stdgo.GoUInt8>, ?_scratchBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_nextCipher:stdgo.AnyInterface, ?_nextMac:stdgo._internal.hash.Hash_Hash.Hash, ?_level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, ?_trafficSecret:stdgo.Slice<stdgo.GoUInt8>) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
        if (_version != null) this._version = _version;
        if (_cipher != null) this._cipher = _cipher;
        if (_mac != null) this._mac = _mac;
        if (_seq != null) this._seq = _seq;
        if (_scratchBuf != null) this._scratchBuf = _scratchBuf;
        if (_nextCipher != null) this._nextCipher = _nextCipher;
        if (_nextMac != null) this._nextMac = _nextMac;
        if (_level != null) this._level = _level;
        if (_trafficSecret != null) this._trafficSecret = _trafficSecret;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.mutex.lock();
    @:embedded
    public function tryLock():Bool return this.mutex.tryLock();
    @:embedded
    public function unlock() this.mutex.unlock();
    @:embedded
    public function _lockSlow() this.mutex._lockSlow();
    @:embedded
    public function _unlockSlow(__0:stdgo.GoInt32) this.mutex._unlockSlow(__0);
    public function __copy__() {
        return new T_halfConn(
mutex,
_err,
_version,
_cipher,
_mac,
_seq,
_scratchBuf,
_nextCipher,
_nextMac,
_level,
_trafficSecret);
    }
}
