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
class CertPool_asInterface {
    @:keep
    @:tdfield
    public dynamic function equal(_other:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):Bool return @:_0 __self__.value.equal(_other);
    @:keep
    @:tdfield
    public dynamic function subjects():stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return @:_0 __self__.value.subjects();
    @:keep
    @:tdfield
    public dynamic function appendCertsFromPEM(_pemCerts:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value.appendCertsFromPEM(_pemCerts);
    @:keep
    @:tdfield
    public dynamic function _addCertFunc(_rawSum224:stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, _rawSubject:stdgo.GoString, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):Void @:_0 __self__.value._addCertFunc(_rawSum224, _rawSubject, _getCert);
    @:keep
    @:tdfield
    public dynamic function addCert(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Void @:_0 __self__.value.addCert(_cert);
    @:keep
    @:tdfield
    public dynamic function _contains(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool return @:_0 __self__.value._contains(_cert);
    @:keep
    @:tdfield
    public dynamic function _findPotentialParents(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> return @:_0 __self__.value._findPotentialParents(_cert);
    @:keep
    @:tdfield
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function _cert(_n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } return @:_0 __self__.value._cert(_n);
    @:keep
    @:tdfield
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.x509.X509_CertPoolPointer.CertPoolPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
