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
var _helloRetryRequestRandom : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(32, 32, ...[
(207 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(173 : stdgo.GoUInt8),
(116 : stdgo.GoUInt8),
(229 : stdgo.GoUInt8),
(154 : stdgo.GoUInt8),
(97 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(140 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(30 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(184 : stdgo.GoUInt8),
(145 : stdgo.GoUInt8),
(194 : stdgo.GoUInt8),
(162 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(22 : stdgo.GoUInt8),
(122 : stdgo.GoUInt8),
(187 : stdgo.GoUInt8),
(140 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(158 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(226 : stdgo.GoUInt8),
(200 : stdgo.GoUInt8),
(168 : stdgo.GoUInt8),
(51 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
