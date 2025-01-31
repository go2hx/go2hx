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
function _extKeyUsageFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):{ var _0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage; var _1 : Bool; } {
        var _eku = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _ok = false;
        for (__1 => _pair in stdgo._internal.crypto.x509.X509__extKeyUsageOIDs._extKeyUsageOIDs) {
            if (_oid.equal(_pair._oid)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage; var _1 : Bool; } = { _0 : _pair._extKeyUsage, _1 : true };
                    _eku = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return { _0 : _eku, _1 : _ok };
    }
