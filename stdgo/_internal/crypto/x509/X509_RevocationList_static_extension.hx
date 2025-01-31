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
@:keep @:allow(stdgo._internal.crypto.x509.X509.RevocationList_asInterface) class RevocationList_static_extension {
    @:keep
    @:tdfield
    static public function checkSignatureFrom( _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList> = _rl;
        if ((((@:checkr _parent ?? throw "null pointer dereference").version == ((3 : stdgo.GoInt)) && !(@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid : Bool) || ((@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid && !(@:checkr _parent ?? throw "null pointer dereference").isCA : Bool) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError));
        };
        if ((((@:checkr _parent ?? throw "null pointer dereference").keyUsage != (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) && (((@:checkr _parent ?? throw "null pointer dereference").keyUsage & (64 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError));
        };
        if ((@:checkr _parent ?? throw "null pointer dereference").publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            return stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
        };
        return @:check2r _parent.checkSignature((@:checkr _rl ?? throw "null pointer dereference").signatureAlgorithm, (@:checkr _rl ?? throw "null pointer dereference").rawTBSRevocationList, (@:checkr _rl ?? throw "null pointer dereference").signature);
    }
}
