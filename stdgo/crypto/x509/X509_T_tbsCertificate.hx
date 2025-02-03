package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_tbsCertificate_static_extension) abstract T_tbsCertificate(stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate) from stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate to stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
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
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var issuer(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_issuer():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.issuer;
    function set_issuer(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.issuer = v;
        return v;
    }
    public var validity(get, set) : T_validity;
    function get_validity():T_validity return this.validity;
    function set_validity(v:T_validity):T_validity {
        this.validity = v;
        return v;
    }
    public var subject(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_subject():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.subject;
    function set_subject(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.subject = v;
        return v;
    }
    public var publicKey(get, set) : T_publicKeyInfo;
    function get_publicKey():T_publicKeyInfo return this.publicKey;
    function set_publicKey(v:T_publicKeyInfo):T_publicKeyInfo {
        this.publicKey = v;
        return v;
    }
    public var uniqueId(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_uniqueId():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.uniqueId;
    function set_uniqueId(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.uniqueId = v;
        return v;
    }
    public var subjectUniqueId(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_subjectUniqueId():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.subjectUniqueId;
    function set_subjectUniqueId(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.subjectUniqueId = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:StdTypes.Int, ?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?signatureAlgorithm:AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?validity:T_validity, ?subject:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?publicKey:T_publicKeyInfo, ?uniqueId:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?subjectUniqueId:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate(
raw,
(version : stdgo.GoInt),
(serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>),
signatureAlgorithm,
issuer,
validity,
subject,
publicKey,
uniqueId,
subjectUniqueId,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
