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
@:keep @:allow(stdgo._internal.crypto.x509.X509.InsecureAlgorithmError_asInterface) class InsecureAlgorithmError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError = _e;
        var _override:stdgo.GoString = ("" : stdgo.GoString);
        if ((((_e : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm) == (3 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) || ((_e : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm) == (9 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) : Bool)) {
            _override = (" (temporarily override with GODEBUG=x509sha1=1)" : stdgo.GoString);
        };
        return (stdgo._internal.fmt.Fmt_sprintf.sprintf(("x509: cannot verify signature: insecure algorithm %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_e : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)))) + _override?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
