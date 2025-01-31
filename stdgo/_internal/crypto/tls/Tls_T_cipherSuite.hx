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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_cipherSuite_static_extension.T_cipherSuite_static_extension) class T_cipherSuite {
    public var _id : stdgo.GoUInt16 = 0;
    public var _keyLen : stdgo.GoInt = 0;
    public var _macLen : stdgo.GoInt = 0;
    public var _ivLen : stdgo.GoInt = 0;
    public var _ka : stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement = null;
    public var _flags : stdgo.GoInt = 0;
    public var _cipher : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface = null;
    public var _mac : stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash = null;
    public var _aead : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead = null;
    public function new(?_id:stdgo.GoUInt16, ?_keyLen:stdgo.GoInt, ?_macLen:stdgo.GoInt, ?_ivLen:stdgo.GoInt, ?_ka:stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, ?_flags:stdgo.GoInt, ?_cipher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface, ?_mac:stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash, ?_aead:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead) {
        if (_id != null) this._id = _id;
        if (_keyLen != null) this._keyLen = _keyLen;
        if (_macLen != null) this._macLen = _macLen;
        if (_ivLen != null) this._ivLen = _ivLen;
        if (_ka != null) this._ka = _ka;
        if (_flags != null) this._flags = _flags;
        if (_cipher != null) this._cipher = _cipher;
        if (_mac != null) this._mac = _mac;
        if (_aead != null) this._aead = _aead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cipherSuite(_id, _keyLen, _macLen, _ivLen, _ka, _flags, _cipher, _mac, _aead);
    }
}
