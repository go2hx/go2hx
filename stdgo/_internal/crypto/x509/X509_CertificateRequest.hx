package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
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
    public var dnsnames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var emailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var ipaddresses : stdgo.Slice<stdgo._internal.net.Net_IP.IP> = (null : stdgo.Slice<stdgo._internal.net.Net_IP.IP>);
    public var uris : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSCertificateRequest:stdgo.Slice<stdgo.GoUInt8>, ?rawSubjectPublicKeyInfo:stdgo.Slice<stdgo.GoUInt8>, ?rawSubject:stdgo.Slice<stdgo.GoUInt8>, ?version:stdgo.GoInt, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm, ?publicKeyAlgorithm:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name, ?attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>, ?dnsnames:stdgo.Slice<stdgo.GoString>, ?emailAddresses:stdgo.Slice<stdgo.GoString>, ?ipaddresses:stdgo.Slice<stdgo._internal.net.Net_IP.IP>, ?uris:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>) {
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
        if (dnsnames != null) this.dnsnames = dnsnames;
        if (emailAddresses != null) this.emailAddresses = emailAddresses;
        if (ipaddresses != null) this.ipaddresses = ipaddresses;
        if (uris != null) this.uris = uris;
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
dnsnames,
emailAddresses,
ipaddresses,
uris);
    }
}
