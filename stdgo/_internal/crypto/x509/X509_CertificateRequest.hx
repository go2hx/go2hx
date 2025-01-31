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
@:structInit @:using(stdgo._internal.crypto.x509.X509_CertificateRequest_static_extension.CertificateRequest_static_extension) class CertificateRequest {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawTBSCertificateRequest : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubjectPublicKeyInfo : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubject : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var version : stdgo.GoInt = 0;
    public var signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
    public var publicKeyAlgorithm : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
    public var publicKey : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var subject : stdgo._internal.crypto.x509.pkix.Pkix_Name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_Name.Name);
    public var attributes : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>);
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public var dNSNames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var emailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var iPAddresses : stdgo.Slice<stdgo._internal.net.Net_IP.IP> = (null : stdgo.Slice<stdgo._internal.net.Net_IP.IP>);
    public var uRIs : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSCertificateRequest:stdgo.Slice<stdgo.GoUInt8>, ?rawSubjectPublicKeyInfo:stdgo.Slice<stdgo.GoUInt8>, ?rawSubject:stdgo.Slice<stdgo.GoUInt8>, ?version:stdgo.GoInt, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm, ?publicKeyAlgorithm:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name, ?attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>, ?dNSNames:stdgo.Slice<stdgo.GoString>, ?emailAddresses:stdgo.Slice<stdgo.GoString>, ?iPAddresses:stdgo.Slice<stdgo._internal.net.Net_IP.IP>, ?uRIs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>) {
        if (raw != null) this.raw = raw;
        if (rawTBSCertificateRequest != null) this.rawTBSCertificateRequest = rawTBSCertificateRequest;
        if (rawSubjectPublicKeyInfo != null) this.rawSubjectPublicKeyInfo = rawSubjectPublicKeyInfo;
        if (rawSubject != null) this.rawSubject = rawSubject;
        if (version != null) this.version = version;
        if (signature != null) this.signature = signature;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (publicKeyAlgorithm != null) this.publicKeyAlgorithm = publicKeyAlgorithm;
        if (publicKey != null) this.publicKey = publicKey;
        if (subject != null) this.subject = subject;
        if (attributes != null) this.attributes = attributes;
        if (extensions != null) this.extensions = extensions;
        if (extraExtensions != null) this.extraExtensions = extraExtensions;
        if (dNSNames != null) this.dNSNames = dNSNames;
        if (emailAddresses != null) this.emailAddresses = emailAddresses;
        if (iPAddresses != null) this.iPAddresses = iPAddresses;
        if (uRIs != null) this.uRIs = uRIs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateRequest(
raw,
rawTBSCertificateRequest,
rawSubjectPublicKeyInfo,
rawSubject,
version,
signature,
signatureAlgorithm,
publicKeyAlgorithm,
publicKey,
subject,
attributes,
extensions,
extraExtensions,
dNSNames,
emailAddresses,
iPAddresses,
uRIs);
    }
}
