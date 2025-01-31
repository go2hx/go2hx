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
function cipherSuites():stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite>> {
        return (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite>>(17, 17, ...[
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((47 : stdgo.GoUInt16), ("TLS_RSA_WITH_AES_128_CBC_SHA" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedUpToTLS12._supportedUpToTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((53 : stdgo.GoUInt16), ("TLS_RSA_WITH_AES_256_CBC_SHA" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedUpToTLS12._supportedUpToTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((156 : stdgo.GoUInt16), ("TLS_RSA_WITH_AES_128_GCM_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((157 : stdgo.GoUInt16), ("TLS_RSA_WITH_AES_256_GCM_SHA384" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((4865 : stdgo.GoUInt16), ("TLS_AES_128_GCM_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS13._supportedOnlyTLS13, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((4866 : stdgo.GoUInt16), ("TLS_AES_256_GCM_SHA384" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS13._supportedOnlyTLS13, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((4867 : stdgo.GoUInt16), ("TLS_CHACHA20_POLY1305_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS13._supportedOnlyTLS13, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49161 : stdgo.GoUInt16), ("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedUpToTLS12._supportedUpToTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49162 : stdgo.GoUInt16), ("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedUpToTLS12._supportedUpToTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49171 : stdgo.GoUInt16), ("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedUpToTLS12._supportedUpToTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49172 : stdgo.GoUInt16), ("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedUpToTLS12._supportedUpToTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49195 : stdgo.GoUInt16), ("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49196 : stdgo.GoUInt16), ("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49199 : stdgo.GoUInt16), ("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((49200 : stdgo.GoUInt16), ("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((52392 : stdgo.GoUInt16), ("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite),
(new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((52393 : stdgo.GoUInt16), ("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256" : stdgo.GoString), stdgo._internal.crypto.tls.Tls__supportedOnlyTLS12._supportedOnlyTLS12, false) : stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite>>);
    }
