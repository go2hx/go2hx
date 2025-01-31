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
class T_certCache_asInterface {
    @:keep
    @:tdfield
    public dynamic function _newCert(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>; var _1 : stdgo.Error; } return @:_0 __self__.value._newCert(_der);
    @:keep
    @:tdfield
    public dynamic function _evict(_e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):Void @:_0 __self__.value._evict(_e);
    @:keep
    @:tdfield
    public dynamic function _active(_e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> return @:_0 __self__.value._active(_e);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _missLocked():Void @:_0 __self__.value._missLocked();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _loadReadOnly():stdgo._internal.sync.Sync_T_readOnly.T_readOnly return @:_0 __self__.value._loadReadOnly();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dirtyLocked():Void @:_0 __self__.value._dirtyLocked();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function swap(_0:stdgo.AnyInterface, _1:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.swap(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function store(_0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Void @:_0 __self__.value.store(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function range(_0:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void @:_0 __self__.value.range(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function loadOrStore(_0:stdgo.AnyInterface, _1:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.loadOrStore(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function loadAndDelete(_0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.loadAndDelete(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function load(_0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.load(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function delete(_0:stdgo.AnyInterface):Void @:_0 __self__.value.delete(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function compareAndSwap(_0:stdgo.AnyInterface, _1:stdgo.AnyInterface, _2:stdgo.AnyInterface):Bool return @:_0 __self__.value.compareAndSwap(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function compareAndDelete(_0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Bool return @:_0 __self__.value.compareAndDelete(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_T_certCachePointer.T_certCachePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
