package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_certificaterequest_static_extension.CertificateRequest_static_extension) class CertificateRequest {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawTBSCertificateRequest : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubjectPublicKeyInfo : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubject : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var version : stdgo.GoInt = 0;
    public var signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
    public var publicKeyAlgorithm : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
    public var publicKey : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var subject : stdgo._internal.crypto.x509.pkix.Pkix_name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_name.Name);
    public var attributes : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var dNSNames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var emailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var iPAddresses : stdgo.Slice<stdgo._internal.net.Net_ip.IP> = (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
    public var uRIs : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSCertificateRequest:stdgo.Slice<stdgo.GoUInt8>, ?rawSubjectPublicKeyInfo:stdgo.Slice<stdgo.GoUInt8>, ?rawSubject:stdgo.Slice<stdgo.GoUInt8>, ?version:stdgo.GoInt, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, ?publicKeyAlgorithm:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?dNSNames:stdgo.Slice<stdgo.GoString>, ?emailAddresses:stdgo.Slice<stdgo.GoString>, ?iPAddresses:stdgo.Slice<stdgo._internal.net.Net_ip.IP>, ?uRIs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>) {
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
