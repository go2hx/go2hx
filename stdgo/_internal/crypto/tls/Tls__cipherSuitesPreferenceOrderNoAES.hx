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
var _cipherSuitesPreferenceOrderNoAES : stdgo.Slice<stdgo.GoUInt16> = (new stdgo.Slice<stdgo.GoUInt16>(22, 22, ...[
(52393 : stdgo.GoUInt16),
(52392 : stdgo.GoUInt16),
(49195 : stdgo.GoUInt16),
(49199 : stdgo.GoUInt16),
(49196 : stdgo.GoUInt16),
(49200 : stdgo.GoUInt16),
(49161 : stdgo.GoUInt16),
(49171 : stdgo.GoUInt16),
(49162 : stdgo.GoUInt16),
(49172 : stdgo.GoUInt16),
(156 : stdgo.GoUInt16),
(157 : stdgo.GoUInt16),
(47 : stdgo.GoUInt16),
(53 : stdgo.GoUInt16),
(49170 : stdgo.GoUInt16),
(10 : stdgo.GoUInt16),
(49187 : stdgo.GoUInt16),
(49191 : stdgo.GoUInt16),
(60 : stdgo.GoUInt16),
(49159 : stdgo.GoUInt16),
(49169 : stdgo.GoUInt16),
(5 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
