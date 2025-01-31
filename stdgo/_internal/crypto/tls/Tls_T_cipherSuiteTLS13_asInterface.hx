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
class T_cipherSuiteTLS13_asInterface {
    @:keep
    @:tdfield
    public dynamic function _exportKeyingMaterial(_masterSecret:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_Hash.Hash):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._exportKeyingMaterial(_masterSecret, _transcript);
    @:keep
    @:tdfield
    public dynamic function _finishedHash(_baseKey:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._finishedHash(_baseKey, _transcript);
    @:keep
    @:tdfield
    public dynamic function _trafficKey(_trafficSecret:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } return @:_0 __self__.value._trafficKey(_trafficSecret);
    @:keep
    @:tdfield
    public dynamic function _nextTrafficSecret(_trafficSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._nextTrafficSecret(_trafficSecret);
    @:keep
    @:tdfield
    public dynamic function _extract(_newSecret:stdgo.Slice<stdgo.GoUInt8>, _currentSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._extract(_newSecret, _currentSecret);
    @:keep
    @:tdfield
    public dynamic function _deriveSecret(_secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._deriveSecret(_secret, _label, _transcript);
    @:keep
    @:tdfield
    public dynamic function _expandLabel(_secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._expandLabel(_secret, _label, _context, _length);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13Pointer.T_cipherSuiteTLS13Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
