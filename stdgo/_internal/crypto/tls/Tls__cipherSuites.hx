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
var _cipherSuites : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>>(22, 22, ...[
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((52392 : stdgo.GoUInt16), (32 : stdgo.GoInt), (0 : stdgo.GoInt), (12 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (5 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadChaCha20Poly1305._aeadChaCha20Poly1305) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((52393 : stdgo.GoUInt16), (32 : stdgo.GoInt), (0 : stdgo.GoInt), (12 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (7 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadChaCha20Poly1305._aeadChaCha20Poly1305) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49199 : stdgo.GoUInt16), (16 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (5 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadAESGCM._aeadAESGCM) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49195 : stdgo.GoUInt16), (16 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (7 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadAESGCM._aeadAESGCM) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49200 : stdgo.GoUInt16), (32 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (13 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadAESGCM._aeadAESGCM) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49196 : stdgo.GoUInt16), (32 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (15 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadAESGCM._aeadAESGCM) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49191 : stdgo.GoUInt16), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (5 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA256._macSHA256, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49171 : stdgo.GoUInt16), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (1 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49187 : stdgo.GoUInt16), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (7 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA256._macSHA256, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49161 : stdgo.GoUInt16), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (3 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49172 : stdgo.GoUInt16), (32 : stdgo.GoInt), (20 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (1 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49162 : stdgo.GoUInt16), (32 : stdgo.GoInt), (20 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (3 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((156 : stdgo.GoUInt16), (16 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (4 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadAESGCM._aeadAESGCM) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((157 : stdgo.GoUInt16), (32 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (12 : stdgo.GoInt), null, null, stdgo._internal.crypto.tls.Tls__aeadAESGCM._aeadAESGCM) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((60 : stdgo.GoUInt16), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (4 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA256._macSHA256, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((47 : stdgo.GoUInt16), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((53 : stdgo.GoUInt16), (32 : stdgo.GoInt), (20 : stdgo.GoInt), (16 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherAES._cipherAES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49170 : stdgo.GoUInt16), (24 : stdgo.GoInt), (20 : stdgo.GoInt), (8 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (1 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipher3DES._cipher3DES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((10 : stdgo.GoUInt16), (24 : stdgo.GoInt), (20 : stdgo.GoInt), (8 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipher3DES._cipher3DES, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((5 : stdgo.GoUInt16), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__rsaKA._rsaKA, (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherRC4._cipherRC4, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49169 : stdgo.GoUInt16), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheRSAKA._ecdheRSAKA, (1 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherRC4._cipherRC4, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite),
(new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((49159 : stdgo.GoUInt16), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__ecdheECDSAKA._ecdheECDSAKA, (3 : stdgo.GoInt), stdgo._internal.crypto.tls.Tls__cipherRC4._cipherRC4, stdgo._internal.crypto.tls.Tls__macSHA1._macSHA1, null) : stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>>);
