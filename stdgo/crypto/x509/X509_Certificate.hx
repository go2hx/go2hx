package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.Certificate_static_extension) abstract Certificate(stdgo._internal.crypto.x509.X509_Certificate.Certificate) from stdgo._internal.crypto.x509.X509_Certificate.Certificate to stdgo._internal.crypto.x509.X509_Certificate.Certificate {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSCertificate(get, set) : Array<std.UInt>;
    function get_rawTBSCertificate():Array<std.UInt> return [for (i in this.rawTBSCertificate) i];
    function set_rawTBSCertificate(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSCertificate = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubjectPublicKeyInfo(get, set) : Array<std.UInt>;
    function get_rawSubjectPublicKeyInfo():Array<std.UInt> return [for (i in this.rawSubjectPublicKeyInfo) i];
    function set_rawSubjectPublicKeyInfo(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubjectPublicKeyInfo = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubject(get, set) : Array<std.UInt>;
    function get_rawSubject():Array<std.UInt> return [for (i in this.rawSubject) i];
    function set_rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubject = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawIssuer(get, set) : Array<std.UInt>;
    function get_rawIssuer():Array<std.UInt> return [for (i in this.rawIssuer) i];
    function set_rawIssuer(v:Array<std.UInt>):Array<std.UInt> {
        this.rawIssuer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signatureAlgorithm(get, set) : SignatureAlgorithm;
    function get_signatureAlgorithm():SignatureAlgorithm return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:SignatureAlgorithm):SignatureAlgorithm {
        this.signatureAlgorithm = v;
        return v;
    }
    public var publicKeyAlgorithm(get, set) : PublicKeyAlgorithm;
    function get_publicKeyAlgorithm():PublicKeyAlgorithm return this.publicKeyAlgorithm;
    function set_publicKeyAlgorithm(v:PublicKeyAlgorithm):PublicKeyAlgorithm {
        this.publicKeyAlgorithm = v;
        return v;
    }
    public var publicKey(get, set) : stdgo.AnyInterface;
    function get_publicKey():stdgo.AnyInterface return this.publicKey;
    function set_publicKey(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.publicKey = (v : stdgo.AnyInterface);
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_Int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var issuer(get, set) : Name;
    function get_issuer():Name return this.issuer;
    function set_issuer(v:Name):Name {
        this.issuer = v;
        return v;
    }
    public var subject(get, set) : Name;
    function get_subject():Name return this.subject;
    function set_subject(v:Name):Name {
        this.subject = v;
        return v;
    }
    public var notBefore(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notBefore():stdgo._internal.time.Time_Time.Time return this.notBefore;
    function set_notBefore(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notBefore = v;
        return v;
    }
    public var notAfter(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notAfter():stdgo._internal.time.Time_Time.Time return this.notAfter;
    function set_notAfter(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notAfter = v;
        return v;
    }
    public var keyUsage(get, set) : KeyUsage;
    function get_keyUsage():KeyUsage return this.keyUsage;
    function set_keyUsage(v:KeyUsage):KeyUsage {
        this.keyUsage = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var unhandledCriticalExtensions(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>;
    function get_unhandledCriticalExtensions():Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> return [for (i in this.unhandledCriticalExtensions) i];
    function set_unhandledCriticalExtensions(v:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> {
        this.unhandledCriticalExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        return v;
    }
    public var extKeyUsage(get, set) : Array<ExtKeyUsage>;
    function get_extKeyUsage():Array<ExtKeyUsage> return [for (i in this.extKeyUsage) i];
    function set_extKeyUsage(v:Array<ExtKeyUsage>):Array<ExtKeyUsage> {
        this.extKeyUsage = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        return v;
    }
    public var unknownExtKeyUsage(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>;
    function get_unknownExtKeyUsage():Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> return [for (i in this.unknownExtKeyUsage) i];
    function set_unknownExtKeyUsage(v:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> {
        this.unknownExtKeyUsage = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        return v;
    }
    public var basicConstraintsValid(get, set) : Bool;
    function get_basicConstraintsValid():Bool return this.basicConstraintsValid;
    function set_basicConstraintsValid(v:Bool):Bool {
        this.basicConstraintsValid = v;
        return v;
    }
    public var isCA(get, set) : Bool;
    function get_isCA():Bool return this.isCA;
    function set_isCA(v:Bool):Bool {
        this.isCA = v;
        return v;
    }
    public var maxPathLen(get, set) : StdTypes.Int;
    function get_maxPathLen():StdTypes.Int return this.maxPathLen;
    function set_maxPathLen(v:StdTypes.Int):StdTypes.Int {
        this.maxPathLen = (v : stdgo.GoInt);
        return v;
    }
    public var maxPathLenZero(get, set) : Bool;
    function get_maxPathLenZero():Bool return this.maxPathLenZero;
    function set_maxPathLenZero(v:Bool):Bool {
        this.maxPathLenZero = v;
        return v;
    }
    public var subjectKeyId(get, set) : Array<std.UInt>;
    function get_subjectKeyId():Array<std.UInt> return [for (i in this.subjectKeyId) i];
    function set_subjectKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.subjectKeyId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var authorityKeyId(get, set) : Array<std.UInt>;
    function get_authorityKeyId():Array<std.UInt> return [for (i in this.authorityKeyId) i];
    function set_authorityKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.authorityKeyId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var oCSPServer(get, set) : Array<String>;
    function get_oCSPServer():Array<String> return [for (i in this.oCSPServer) i];
    function set_oCSPServer(v:Array<String>):Array<String> {
        this.oCSPServer = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var issuingCertificateURL(get, set) : Array<String>;
    function get_issuingCertificateURL():Array<String> return [for (i in this.issuingCertificateURL) i];
    function set_issuingCertificateURL(v:Array<String>):Array<String> {
        this.issuingCertificateURL = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var dNSNames(get, set) : Array<String>;
    function get_dNSNames():Array<String> return [for (i in this.dNSNames) i];
    function set_dNSNames(v:Array<String>):Array<String> {
        this.dNSNames = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var emailAddresses(get, set) : Array<String>;
    function get_emailAddresses():Array<String> return [for (i in this.emailAddresses) i];
    function set_emailAddresses(v:Array<String>):Array<String> {
        this.emailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var iPAddresses(get, set) : Array<stdgo._internal.net.Net_IP.IP>;
    function get_iPAddresses():Array<stdgo._internal.net.Net_IP.IP> return [for (i in this.iPAddresses) i];
    function set_iPAddresses(v:Array<stdgo._internal.net.Net_IP.IP>):Array<stdgo._internal.net.Net_IP.IP> {
        this.iPAddresses = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>);
        return v;
    }
    public var uRIs(get, set) : Array<stdgo._internal.net.url.Url_URL.URL>;
    function get_uRIs():Array<stdgo._internal.net.url.Url_URL.URL> return [for (i in this.uRIs) i];
    function set_uRIs(v:Array<stdgo._internal.net.url.Url_URL.URL>):Array<stdgo._internal.net.url.Url_URL.URL> {
        this.uRIs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>);
        return v;
    }
    public var permittedDNSDomainsCritical(get, set) : Bool;
    function get_permittedDNSDomainsCritical():Bool return this.permittedDNSDomainsCritical;
    function set_permittedDNSDomainsCritical(v:Bool):Bool {
        this.permittedDNSDomainsCritical = v;
        return v;
    }
    public var permittedDNSDomains(get, set) : Array<String>;
    function get_permittedDNSDomains():Array<String> return [for (i in this.permittedDNSDomains) i];
    function set_permittedDNSDomains(v:Array<String>):Array<String> {
        this.permittedDNSDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedDNSDomains(get, set) : Array<String>;
    function get_excludedDNSDomains():Array<String> return [for (i in this.excludedDNSDomains) i];
    function set_excludedDNSDomains(v:Array<String>):Array<String> {
        this.excludedDNSDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var permittedIPRanges(get, set) : Array<stdgo._internal.net.Net_IPNet.IPNet>;
    function get_permittedIPRanges():Array<stdgo._internal.net.Net_IPNet.IPNet> return [for (i in this.permittedIPRanges) i];
    function set_permittedIPRanges(v:Array<stdgo._internal.net.Net_IPNet.IPNet>):Array<stdgo._internal.net.Net_IPNet.IPNet> {
        this.permittedIPRanges = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>);
        return v;
    }
    public var excludedIPRanges(get, set) : Array<stdgo._internal.net.Net_IPNet.IPNet>;
    function get_excludedIPRanges():Array<stdgo._internal.net.Net_IPNet.IPNet> return [for (i in this.excludedIPRanges) i];
    function set_excludedIPRanges(v:Array<stdgo._internal.net.Net_IPNet.IPNet>):Array<stdgo._internal.net.Net_IPNet.IPNet> {
        this.excludedIPRanges = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>);
        return v;
    }
    public var permittedEmailAddresses(get, set) : Array<String>;
    function get_permittedEmailAddresses():Array<String> return [for (i in this.permittedEmailAddresses) i];
    function set_permittedEmailAddresses(v:Array<String>):Array<String> {
        this.permittedEmailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedEmailAddresses(get, set) : Array<String>;
    function get_excludedEmailAddresses():Array<String> return [for (i in this.excludedEmailAddresses) i];
    function set_excludedEmailAddresses(v:Array<String>):Array<String> {
        this.excludedEmailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var permittedURIDomains(get, set) : Array<String>;
    function get_permittedURIDomains():Array<String> return [for (i in this.permittedURIDomains) i];
    function set_permittedURIDomains(v:Array<String>):Array<String> {
        this.permittedURIDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedURIDomains(get, set) : Array<String>;
    function get_excludedURIDomains():Array<String> return [for (i in this.excludedURIDomains) i];
    function set_excludedURIDomains(v:Array<String>):Array<String> {
        this.excludedURIDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cRLDistributionPoints(get, set) : Array<String>;
    function get_cRLDistributionPoints():Array<String> return [for (i in this.cRLDistributionPoints) i];
    function set_cRLDistributionPoints(v:Array<String>):Array<String> {
        this.cRLDistributionPoints = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var policyIdentifiers(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>;
    function get_policyIdentifiers():Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> return [for (i in this.policyIdentifiers) i];
    function set_policyIdentifiers(v:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> {
        this.policyIdentifiers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSCertificate:Array<std.UInt>, ?rawSubjectPublicKeyInfo:Array<std.UInt>, ?rawSubject:Array<std.UInt>, ?rawIssuer:Array<std.UInt>, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?version:StdTypes.Int, ?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?issuer:Name, ?subject:Name, ?notBefore:stdgo._internal.time.Time_Time.Time, ?notAfter:stdgo._internal.time.Time_Time.Time, ?keyUsage:KeyUsage, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>, ?unhandledCriticalExtensions:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>, ?extKeyUsage:Array<ExtKeyUsage>, ?unknownExtKeyUsage:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>, ?basicConstraintsValid:Bool, ?isCA:Bool, ?maxPathLen:StdTypes.Int, ?maxPathLenZero:Bool, ?subjectKeyId:Array<std.UInt>, ?authorityKeyId:Array<std.UInt>, ?oCSPServer:Array<String>, ?issuingCertificateURL:Array<String>, ?dNSNames:Array<String>, ?emailAddresses:Array<String>, ?iPAddresses:Array<stdgo._internal.net.Net_IP.IP>, ?uRIs:Array<stdgo._internal.net.url.Url_URL.URL>, ?permittedDNSDomainsCritical:Bool, ?permittedDNSDomains:Array<String>, ?excludedDNSDomains:Array<String>, ?permittedIPRanges:Array<stdgo._internal.net.Net_IPNet.IPNet>, ?excludedIPRanges:Array<stdgo._internal.net.Net_IPNet.IPNet>, ?permittedEmailAddresses:Array<String>, ?excludedEmailAddresses:Array<String>, ?permittedURIDomains:Array<String>, ?excludedURIDomains:Array<String>, ?cRLDistributionPoints:Array<String>, ?policyIdentifiers:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>) this = new stdgo._internal.crypto.x509.X509_Certificate.Certificate(
([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSCertificate) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubjectPublicKeyInfo) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubject) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawIssuer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
publicKeyAlgorithm,
(publicKey : stdgo.AnyInterface),
(version : stdgo.GoInt),
(serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>),
issuer,
subject,
notBefore,
notAfter,
keyUsage,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in unhandledCriticalExtensions) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>),
([for (i in extKeyUsage) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>),
([for (i in unknownExtKeyUsage) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>),
basicConstraintsValid,
isCA,
(maxPathLen : stdgo.GoInt),
maxPathLenZero,
([for (i in subjectKeyId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in authorityKeyId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in oCSPServer) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in issuingCertificateURL) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in dNSNames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in emailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in iPAddresses) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>),
([for (i in uRIs) (i : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>),
permittedDNSDomainsCritical,
([for (i in permittedDNSDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedDNSDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in permittedIPRanges) (i : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>),
([for (i in excludedIPRanges) (i : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>),
([for (i in permittedEmailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedEmailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in permittedURIDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedURIDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cRLDistributionPoints) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in policyIdentifiers) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
