package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension) class Certificate {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawTBSCertificate : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubjectPublicKeyInfo : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubject : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawIssuer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
    public var publicKeyAlgorithm : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
    public var publicKey : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var version : stdgo.GoInt = 0;
    public var serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var issuer : stdgo._internal.crypto.x509.pkix.Pkix_name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_name.Name);
    public var subject : stdgo._internal.crypto.x509.pkix.Pkix_name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_name.Name);
    public var notBefore : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var notAfter : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var keyUsage : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage);
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var unhandledCriticalExtensions : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
    public var extKeyUsage : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
    public var unknownExtKeyUsage : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
    public var basicConstraintsValid : Bool = false;
    public var isCA : Bool = false;
    public var maxPathLen : stdgo.GoInt = 0;
    public var maxPathLenZero : Bool = false;
    public var subjectKeyId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var authorityKeyId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var oCSPServer : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var issuingCertificateURL : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var dNSNames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var emailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var iPAddresses : stdgo.Slice<stdgo._internal.net.Net_ip.IP> = (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
    public var uRIs : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>);
    public var permittedDNSDomainsCritical : Bool = false;
    public var permittedDNSDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var excludedDNSDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var permittedIPRanges : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
    public var excludedIPRanges : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
    public var permittedEmailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var excludedEmailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var permittedURIDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var excludedURIDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cRLDistributionPoints : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var policyIdentifiers : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSCertificate:stdgo.Slice<stdgo.GoUInt8>, ?rawSubjectPublicKeyInfo:stdgo.Slice<stdgo.GoUInt8>, ?rawSubject:stdgo.Slice<stdgo.GoUInt8>, ?rawIssuer:stdgo.Slice<stdgo.GoUInt8>, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, ?publicKeyAlgorithm:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?version:stdgo.GoInt, ?serialNumber:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?notBefore:stdgo._internal.time.Time_time.Time, ?notAfter:stdgo._internal.time.Time_time.Time, ?keyUsage:stdgo._internal.crypto.x509.X509_keyusage.KeyUsage, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?unhandledCriticalExtensions:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, ?extKeyUsage:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>, ?unknownExtKeyUsage:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, ?basicConstraintsValid:Bool, ?isCA:Bool, ?maxPathLen:stdgo.GoInt, ?maxPathLenZero:Bool, ?subjectKeyId:stdgo.Slice<stdgo.GoUInt8>, ?authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, ?oCSPServer:stdgo.Slice<stdgo.GoString>, ?issuingCertificateURL:stdgo.Slice<stdgo.GoString>, ?dNSNames:stdgo.Slice<stdgo.GoString>, ?emailAddresses:stdgo.Slice<stdgo.GoString>, ?iPAddresses:stdgo.Slice<stdgo._internal.net.Net_ip.IP>, ?uRIs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>, ?permittedDNSDomainsCritical:Bool, ?permittedDNSDomains:stdgo.Slice<stdgo.GoString>, ?excludedDNSDomains:stdgo.Slice<stdgo.GoString>, ?permittedIPRanges:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, ?excludedIPRanges:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, ?permittedEmailAddresses:stdgo.Slice<stdgo.GoString>, ?excludedEmailAddresses:stdgo.Slice<stdgo.GoString>, ?permittedURIDomains:stdgo.Slice<stdgo.GoString>, ?excludedURIDomains:stdgo.Slice<stdgo.GoString>, ?cRLDistributionPoints:stdgo.Slice<stdgo.GoString>, ?policyIdentifiers:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>) {
        if (raw != null) this.raw = raw;
        if (rawTBSCertificate != null) this.rawTBSCertificate = rawTBSCertificate;
        if (rawSubjectPublicKeyInfo != null) this.rawSubjectPublicKeyInfo = rawSubjectPublicKeyInfo;
        if (rawSubject != null) this.rawSubject = rawSubject;
        if (rawIssuer != null) this.rawIssuer = rawIssuer;
        if (signature != null) this.signature = signature;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (publicKeyAlgorithm != null) this.publicKeyAlgorithm = publicKeyAlgorithm;
        if (publicKey != null) this.publicKey = publicKey;
        if (version != null) this.version = version;
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (issuer != null) this.issuer = issuer;
        if (subject != null) this.subject = subject;
        if (notBefore != null) this.notBefore = notBefore;
        if (notAfter != null) this.notAfter = notAfter;
        if (keyUsage != null) this.keyUsage = keyUsage;
        if (extensions != null) this.extensions = extensions;
        if (extraExtensions != null) this.extraExtensions = extraExtensions;
        if (unhandledCriticalExtensions != null) this.unhandledCriticalExtensions = unhandledCriticalExtensions;
        if (extKeyUsage != null) this.extKeyUsage = extKeyUsage;
        if (unknownExtKeyUsage != null) this.unknownExtKeyUsage = unknownExtKeyUsage;
        if (basicConstraintsValid != null) this.basicConstraintsValid = basicConstraintsValid;
        if (isCA != null) this.isCA = isCA;
        if (maxPathLen != null) this.maxPathLen = maxPathLen;
        if (maxPathLenZero != null) this.maxPathLenZero = maxPathLenZero;
        if (subjectKeyId != null) this.subjectKeyId = subjectKeyId;
        if (authorityKeyId != null) this.authorityKeyId = authorityKeyId;
        if (oCSPServer != null) this.oCSPServer = oCSPServer;
        if (issuingCertificateURL != null) this.issuingCertificateURL = issuingCertificateURL;
        if (dNSNames != null) this.dNSNames = dNSNames;
        if (emailAddresses != null) this.emailAddresses = emailAddresses;
        if (iPAddresses != null) this.iPAddresses = iPAddresses;
        if (uRIs != null) this.uRIs = uRIs;
        if (permittedDNSDomainsCritical != null) this.permittedDNSDomainsCritical = permittedDNSDomainsCritical;
        if (permittedDNSDomains != null) this.permittedDNSDomains = permittedDNSDomains;
        if (excludedDNSDomains != null) this.excludedDNSDomains = excludedDNSDomains;
        if (permittedIPRanges != null) this.permittedIPRanges = permittedIPRanges;
        if (excludedIPRanges != null) this.excludedIPRanges = excludedIPRanges;
        if (permittedEmailAddresses != null) this.permittedEmailAddresses = permittedEmailAddresses;
        if (excludedEmailAddresses != null) this.excludedEmailAddresses = excludedEmailAddresses;
        if (permittedURIDomains != null) this.permittedURIDomains = permittedURIDomains;
        if (excludedURIDomains != null) this.excludedURIDomains = excludedURIDomains;
        if (cRLDistributionPoints != null) this.cRLDistributionPoints = cRLDistributionPoints;
        if (policyIdentifiers != null) this.policyIdentifiers = policyIdentifiers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Certificate(
raw,
rawTBSCertificate,
rawSubjectPublicKeyInfo,
rawSubject,
rawIssuer,
signature,
signatureAlgorithm,
publicKeyAlgorithm,
publicKey,
version,
serialNumber,
issuer,
subject,
notBefore,
notAfter,
keyUsage,
extensions,
extraExtensions,
unhandledCriticalExtensions,
extKeyUsage,
unknownExtKeyUsage,
basicConstraintsValid,
isCA,
maxPathLen,
maxPathLenZero,
subjectKeyId,
authorityKeyId,
oCSPServer,
issuingCertificateURL,
dNSNames,
emailAddresses,
iPAddresses,
uRIs,
permittedDNSDomainsCritical,
permittedDNSDomains,
excludedDNSDomains,
permittedIPRanges,
excludedIPRanges,
permittedEmailAddresses,
excludedEmailAddresses,
permittedURIDomains,
excludedURIDomains,
cRLDistributionPoints,
policyIdentifiers);
    }
}
