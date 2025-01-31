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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg_static_extension.T_certificateVerifyMsg_static_extension) class T_certificateVerifyMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _hasSignatureAlgorithm : Bool = false;
    public var _signatureAlgorithm : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme);
    public var _signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_hasSignatureAlgorithm:Bool, ?_signatureAlgorithm:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme, ?_signature:stdgo.Slice<stdgo.GoUInt8>) {
        if (_raw != null) this._raw = _raw;
        if (_hasSignatureAlgorithm != null) this._hasSignatureAlgorithm = _hasSignatureAlgorithm;
        if (_signatureAlgorithm != null) this._signatureAlgorithm = _signatureAlgorithm;
        if (_signature != null) this._signature = _signature;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateVerifyMsg(_raw, _hasSignatureAlgorithm, _signatureAlgorithm, _signature);
    }
}
