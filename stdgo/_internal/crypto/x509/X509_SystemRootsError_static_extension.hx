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
@:keep @:allow(stdgo._internal.crypto.x509.X509.SystemRootsError_asInterface) class SystemRootsError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError):stdgo.Error {
        @:recv var _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError = _se?.__copy__();
        return _se.err;
    }
    @:keep
    @:tdfield
    static public function error( _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError):stdgo.GoString {
        @:recv var _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError = _se?.__copy__();
        var _msg = ("x509: failed to load system roots and no roots provided" : stdgo.GoString);
        if (_se.err != null) {
            return ((_msg + ("; " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _se.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _msg?.__copy__();
    }
}
