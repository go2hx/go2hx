package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_tbsCertificateList_static_extension) abstract T_tbsCertificateList(stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList) from stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList to stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList {
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
    public var signature(get, set) : AlgorithmIdentifier;
    function get_signature():AlgorithmIdentifier return this.signature;
    function set_signature(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signature = v;
        return v;
    }
    public var issuer(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_issuer():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.issuer;
    function set_issuer(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.issuer = v;
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_Time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_Time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var revokedCertificates(get, set) : Array<RevokedCertificate>;
    function get_revokedCertificates():Array<RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<RevokedCertificate>):Array<RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:StdTypes.Int, ?signature:AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?thisUpdate:stdgo._internal.time.Time_Time.Time, ?nextUpdate:stdgo._internal.time.Time_Time.Time, ?revokedCertificates:Array<RevokedCertificate>, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList(raw, (version : stdgo.GoInt), signature, issuer, thisUpdate, nextUpdate, ([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>), ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
