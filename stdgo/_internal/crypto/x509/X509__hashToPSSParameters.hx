package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
var _hashToPSSParameters : stdgo.GoMap<stdgo._internal.crypto.Crypto_Hash.Hash, stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>();
        x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
        x.set((5u32 : stdgo._internal.crypto.Crypto_Hash.Hash), ({ fullBytes : (new stdgo.Slice<stdgo.GoUInt8>(54, 54, ...[
(48 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(160 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(161 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(247 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(162 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue));
x.set((6u32 : stdgo._internal.crypto.Crypto_Hash.Hash), ({ fullBytes : (new stdgo.Slice<stdgo.GoUInt8>(54, 54, ...[
(48 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(160 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(161 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(247 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(162 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue));
x.set((7u32 : stdgo._internal.crypto.Crypto_Hash.Hash), ({ fullBytes : (new stdgo.Slice<stdgo.GoUInt8>(54, 54, ...[
(48 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(160 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(161 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(247 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(162 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue));
        x;
    } : stdgo.GoMap<stdgo._internal.crypto.Crypto_Hash.Hash, stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
