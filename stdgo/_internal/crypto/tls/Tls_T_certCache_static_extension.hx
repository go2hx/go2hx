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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certCache_asInterface) class T_certCache_static_extension {
    @:keep
    @:tdfield
    static public function _newCert( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>, _der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache> = _cc;
        {
            var __tmp__ = @:check2r _cc.load(stdgo.Go.toInterface((_der : stdgo.GoString))), _entry:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : @:check2r _cc._active((stdgo.Go.typeAssert((_entry : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)), _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_der), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _entry = (stdgo.Go.setRef(({ _cert : _cert } : stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>);
        {
            var __tmp__ = @:check2r _cc.loadOrStore(stdgo.Go.toInterface((_der : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_entry))), _entry:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if (_loaded) {
                return { _0 : @:check2r _cc._active((stdgo.Go.typeAssert((_entry : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : @:check2r _cc._active(_entry), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _evict( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>, _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache> = _cc;
        @:check2r _cc.delete(stdgo.Go.toInterface(((@:checkr (@:checkr _e ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").raw : stdgo.GoString)));
    }
    @:keep
    @:tdfield
    static public function _active( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>, _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache> = _cc;
        @:check2 (@:checkr _e ?? throw "null pointer dereference")._refs.add((1i64 : stdgo.GoInt64));
        var _a = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert((@:checkr _e ?? throw "null pointer dereference")._cert) : stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>);
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(function(__79:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>):Void {
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._refs.add((-1i64 : stdgo.GoInt64)) == ((0i64 : stdgo.GoInt64))) {
                @:check2r _cc._evict(_e);
            };
        }));
        return _a;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _missLocked( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):Void return @:_5 __self__._missLocked();
    @:embedded
    @:embeddededffieldsffun
    public static function _loadReadOnly( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):stdgo._internal.sync.Sync_T_readOnly.T_readOnly return @:_5 __self__._loadReadOnly();
    @:embedded
    @:embeddededffieldsffun
    public static function _dirtyLocked( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):Void return @:_5 __self__._dirtyLocked();
    @:embedded
    @:embeddededffieldsffun
    public static function swap( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.swap(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function store( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Void return @:_5 __self__.store(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function range( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void return @:_5 __self__.range(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function loadOrStore( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.loadOrStore(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function loadAndDelete( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.loadAndDelete(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function load( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.load(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function delete( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface):Void return @:_5 __self__.delete(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function compareAndSwap( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface, _2:stdgo.AnyInterface):Bool return @:_5 __self__.compareAndSwap(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function compareAndDelete( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Bool return @:_5 __self__.compareAndDelete(_0, _1);
}
