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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension) class T_certCache {
    @:embedded
    public var map_ : stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
    public function new(?map_:stdgo._internal.sync.Sync_Map_.Map_) {
        if (map_ != null) this.map_ = map_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var compareAndDelete(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_compareAndDelete():(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool return @:check32 this.map_.compareAndDelete;
    public var compareAndSwap(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_compareAndSwap():(stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Bool return @:check32 this.map_.compareAndSwap;
    public var delete(get, never) : stdgo.AnyInterface -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_delete():stdgo.AnyInterface -> Void return @:check32 this.map_.delete;
    public var load(get, never) : stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_load():stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.load;
    public var loadAndDelete(get, never) : stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_loadAndDelete():stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.loadAndDelete;
    public var loadOrStore(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_loadOrStore():(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.loadOrStore;
    public var range(get, never) : ((stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_range():((stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) -> Void return @:check32 this.map_.range;
    public var store(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_store():(stdgo.AnyInterface, stdgo.AnyInterface) -> Void return @:check32 this.map_.store;
    public var swap(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_swap():(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.swap;
    public var _dirtyLocked(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__dirtyLocked():() -> Void return @:check32 this.map_._dirtyLocked;
    public var _loadReadOnly(get, never) : () -> stdgo._internal.sync.Sync_T_readOnly.T_readOnly;
    @:embedded
    @:embeddededffieldsffun
    public function get__loadReadOnly():() -> stdgo._internal.sync.Sync_T_readOnly.T_readOnly return @:check32 this.map_._loadReadOnly;
    public var _missLocked(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__missLocked():() -> Void return @:check32 this.map_._missLocked;
    public function __copy__() {
        return new T_certCache(map_);
    }
}
