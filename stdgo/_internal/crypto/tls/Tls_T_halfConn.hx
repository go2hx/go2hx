package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golang_dot_org.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_halfConn_static_extension.T_halfConn_static_extension) class T_halfConn {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _version : stdgo.GoUInt16 = 0;
    public var _cipher : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _mac : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _seq : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var _scratchBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(13, 13).__setNumber32__();
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
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.mutex.lock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.mutex.tryLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.mutex.unlock;
    public var _lockSlow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__lockSlow():() -> Void return @:check32 this.mutex._lockSlow;
    public var _unlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unlockSlow():stdgo.GoInt32 -> Void return @:check32 this.mutex._unlockSlow;
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
