package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.CertificateRequest_static_extension) abstract CertificateRequest(stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest) from stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest to stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSCertificateRequest(get, set) : Array<std.UInt>;
    function get_rawTBSCertificateRequest():Array<std.UInt> return [for (i in this.rawTBSCertificateRequest) i];
    function set_rawTBSCertificateRequest(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSCertificateRequest = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
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
    public var subject(get, set) : Name;
    function get_subject():Name return this.subject;
    function set_subject(v:Name):Name {
        this.subject = v;
        return v;
    }
    public var attributes(get, set) : Array<AttributeTypeAndValueSET>;
    function get_attributes():Array<AttributeTypeAndValueSET> return [for (i in this.attributes) i];
    function set_attributes(v:Array<AttributeTypeAndValueSET>):Array<AttributeTypeAndValueSET> {
        this.attributes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>);
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
    public function new(?raw:Array<std.UInt>, ?rawTBSCertificateRequest:Array<std.UInt>, ?rawSubjectPublicKeyInfo:Array<std.UInt>, ?rawSubject:Array<std.UInt>, ?version:StdTypes.Int, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?subject:Name, ?attributes:Array<AttributeTypeAndValueSET>, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>, ?dNSNames:Array<String>, ?emailAddresses:Array<String>, ?iPAddresses:Array<stdgo._internal.net.Net_IP.IP>, ?uRIs:Array<stdgo._internal.net.url.Url_URL.URL>) this = new stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest(
([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSCertificateRequest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubjectPublicKeyInfo) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubject) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(version : stdgo.GoInt),
([for (i in signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
publicKeyAlgorithm,
(publicKey : stdgo.AnyInterface),
subject,
([for (i in attributes) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>),
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in dNSNames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in emailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in iPAddresses) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>),
([for (i in uRIs) (i : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
