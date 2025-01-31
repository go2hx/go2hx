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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_ConnectionState_static_extension.ConnectionState_static_extension) class ConnectionState {
    public var version : stdgo.GoUInt16 = 0;
    public var handshakeComplete : Bool = false;
    public var didResume : Bool = false;
    public var cipherSuite : stdgo.GoUInt16 = 0;
    public var negotiatedProtocol : stdgo.GoString = "";
    public var negotiatedProtocolIsMutual : Bool = false;
    public var serverName : stdgo.GoString = "";
    public var peerCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
    public var verifiedChains : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
    public var signedCertificateTimestamps : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var oCSPResponse : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var tLSUnique : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ekm : (stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = null;
    public function new(?version:stdgo.GoUInt16, ?handshakeComplete:Bool, ?didResume:Bool, ?cipherSuite:stdgo.GoUInt16, ?negotiatedProtocol:stdgo.GoString, ?negotiatedProtocolIsMutual:Bool, ?serverName:stdgo.GoString, ?peerCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, ?verifiedChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>, ?signedCertificateTimestamps:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?oCSPResponse:stdgo.Slice<stdgo.GoUInt8>, ?tLSUnique:stdgo.Slice<stdgo.GoUInt8>, ?_ekm:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }) {
        if (version != null) this.version = version;
        if (handshakeComplete != null) this.handshakeComplete = handshakeComplete;
        if (didResume != null) this.didResume = didResume;
        if (cipherSuite != null) this.cipherSuite = cipherSuite;
        if (negotiatedProtocol != null) this.negotiatedProtocol = negotiatedProtocol;
        if (negotiatedProtocolIsMutual != null) this.negotiatedProtocolIsMutual = negotiatedProtocolIsMutual;
        if (serverName != null) this.serverName = serverName;
        if (peerCertificates != null) this.peerCertificates = peerCertificates;
        if (verifiedChains != null) this.verifiedChains = verifiedChains;
        if (signedCertificateTimestamps != null) this.signedCertificateTimestamps = signedCertificateTimestamps;
        if (oCSPResponse != null) this.oCSPResponse = oCSPResponse;
        if (tLSUnique != null) this.tLSUnique = tLSUnique;
        if (_ekm != null) this._ekm = _ekm;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ConnectionState(
version,
handshakeComplete,
didResume,
cipherSuite,
negotiatedProtocol,
negotiatedProtocolIsMutual,
serverName,
peerCertificates,
verifiedChains,
signedCertificateTimestamps,
oCSPResponse,
tLSUnique,
_ekm);
    }
}
