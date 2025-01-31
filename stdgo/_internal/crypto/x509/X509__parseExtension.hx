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
function _parseExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension; var _1 : stdgo.Error; } {
        var _ext:stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension = ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension);
        if (!@:check2 _der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ext.id) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension OID field" : stdgo.GoString)) };
        };
        if (_der.peekASN1Tag((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!@:check2 _der.readASN1Boolean(stdgo.Go.pointer(_ext.critical))) {
                return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension critical field" : stdgo.GoString)) };
            };
        };
        var _val:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!@:check2 _der.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension value field" : stdgo.GoString)) };
        };
        _ext.value = _val;
        return { _0 : _ext?.__copy__(), _1 : (null : stdgo.Error) };
    }
