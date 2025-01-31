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
function _oidFromECDHCurve(_curve:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve):{ var _0 : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier; var _1 : Bool; } {
        {
            final __value__ = _curve;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidPublicKeyX25519._oidPublicKeyX25519, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_p256.p256()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP256._oidNamedCurveP256, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_p384.p384()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP384._oidNamedCurveP384, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_p521.p521()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP521._oidNamedCurveP521, _1 : true };
            };
        };
        return { _0 : null, _1 : false };
    }
