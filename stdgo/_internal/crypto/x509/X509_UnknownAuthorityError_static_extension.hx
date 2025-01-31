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
@:keep @:allow(stdgo._internal.crypto.x509.X509.UnknownAuthorityError_asInterface) class UnknownAuthorityError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError = _e?.__copy__();
        var _s = ("x509: certificate signed by unknown authority" : stdgo.GoString);
        if (_e._hintErr != null) {
            var _certName = ((@:checkr _e._hintCert ?? throw "null pointer dereference").subject.commonName?.__copy__() : stdgo.GoString);
            if ((_certName.length) == ((0 : stdgo.GoInt))) {
                if ((((@:checkr _e._hintCert ?? throw "null pointer dereference").subject.organization.length) > (0 : stdgo.GoInt) : Bool)) {
                    _certName = (@:checkr _e._hintCert ?? throw "null pointer dereference").subject.organization[(0 : stdgo.GoInt)]?.__copy__();
                } else {
                    _certName = (("serial:" : stdgo.GoString) + (@:check2r (@:checkr _e._hintCert ?? throw "null pointer dereference").serialNumber.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" (possibly because of %q while trying to verify candidate authority certificate %q)" : stdgo.GoString), stdgo.Go.toInterface(_e._hintErr), stdgo.Go.toInterface(_certName)))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
}
