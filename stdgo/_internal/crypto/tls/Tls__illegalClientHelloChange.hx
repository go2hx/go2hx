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
function _illegalClientHelloChange(_ch:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _ch1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):Bool {
        if ((((((((@:checkr _ch ?? throw "null pointer dereference")._supportedVersions.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedVersions.length)) || ((@:checkr _ch ?? throw "null pointer dereference")._cipherSuites.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._cipherSuites.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._supportedCurves.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedCurves.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._alpnProtocols.length != ((@:checkr _ch1 ?? throw "null pointer dereference")._alpnProtocols.length)) : Bool)) {
            return true;
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedVersions) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedVersions[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedVersions[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._cipherSuites) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._cipherSuites[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._cipherSuites[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedCurves) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedCurves[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedCurves[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithms) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithms[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithms[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._alpnProtocols) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._alpnProtocols[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._alpnProtocols[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        return ((((((((((((((@:checkr _ch ?? throw "null pointer dereference")._vers != ((@:checkr _ch1 ?? throw "null pointer dereference")._vers) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._random, (@:checkr _ch1 ?? throw "null pointer dereference")._random) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._sessionId, (@:checkr _ch1 ?? throw "null pointer dereference")._sessionId) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._compressionMethods, (@:checkr _ch1 ?? throw "null pointer dereference")._compressionMethods) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._serverName != ((@:checkr _ch1 ?? throw "null pointer dereference")._serverName) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._ocspStapling != ((@:checkr _ch1 ?? throw "null pointer dereference")._ocspStapling) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._supportedPoints, (@:checkr _ch1 ?? throw "null pointer dereference")._supportedPoints) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._ticketSupported != ((@:checkr _ch1 ?? throw "null pointer dereference")._ticketSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._sessionTicket, (@:checkr _ch1 ?? throw "null pointer dereference")._sessionTicket) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._secureRenegotiationSupported != ((@:checkr _ch1 ?? throw "null pointer dereference")._secureRenegotiationSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._secureRenegotiation, (@:checkr _ch1 ?? throw "null pointer dereference")._secureRenegotiation) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._scts != ((@:checkr _ch1 ?? throw "null pointer dereference")._scts) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._cookie, (@:checkr _ch1 ?? throw "null pointer dereference")._cookie) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._pskModes, (@:checkr _ch1 ?? throw "null pointer dereference")._pskModes) : Bool);
    }
