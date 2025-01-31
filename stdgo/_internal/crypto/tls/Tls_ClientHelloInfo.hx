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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_ClientHelloInfo_static_extension.ClientHelloInfo_static_extension) class ClientHelloInfo {
    public var cipherSuites : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var serverName : stdgo.GoString = "";
    public var supportedCurves : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>);
    public var supportedPoints : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureSchemes : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
    public var supportedProtos : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var supportedVersions : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public function new(?cipherSuites:stdgo.Slice<stdgo.GoUInt16>, ?serverName:stdgo.GoString, ?supportedCurves:stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>, ?supportedPoints:stdgo.Slice<stdgo.GoUInt8>, ?signatureSchemes:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>, ?supportedProtos:stdgo.Slice<stdgo.GoString>, ?supportedVersions:stdgo.Slice<stdgo.GoUInt16>, ?conn:stdgo._internal.net.Net_Conn.Conn, ?_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, ?_ctx:stdgo._internal.context.Context_Context.Context) {
        if (cipherSuites != null) this.cipherSuites = cipherSuites;
        if (serverName != null) this.serverName = serverName;
        if (supportedCurves != null) this.supportedCurves = supportedCurves;
        if (supportedPoints != null) this.supportedPoints = supportedPoints;
        if (signatureSchemes != null) this.signatureSchemes = signatureSchemes;
        if (supportedProtos != null) this.supportedProtos = supportedProtos;
        if (supportedVersions != null) this.supportedVersions = supportedVersions;
        if (conn != null) this.conn = conn;
        if (_config != null) this._config = _config;
        if (_ctx != null) this._ctx = _ctx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ClientHelloInfo(cipherSuites, serverName, supportedCurves, supportedPoints, signatureSchemes, supportedProtos, supportedVersions, conn, _config, _ctx);
    }
}
