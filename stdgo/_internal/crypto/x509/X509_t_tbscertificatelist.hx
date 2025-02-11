package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_tbscertificatelist_static_extension.T_tbsCertificateList_static_extension) class T_tbsCertificateList {
    public var raw : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent = (new stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent(0, 0) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent);
    @:tag("`asn1:\"optional,default:0\"`")
    public var version : stdgo.GoInt = 0;
    public var signature : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var issuer : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
    public var thisUpdate : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    @:tag("`asn1:\"optional\"`")
    public var nextUpdate : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    @:tag("`asn1:\"optional\"`")
    public var revokedCertificates : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
    @:tag("`asn1:\"tag:0,optional,explicit\"`")
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:stdgo.GoInt, ?signature:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?thisUpdate:stdgo._internal.time.Time_time.Time, ?nextUpdate:stdgo._internal.time.Time_time.Time, ?revokedCertificates:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) {
        if (raw != null) this.raw = raw;
        if (version != null) this.version = version;
        if (signature != null) this.signature = signature;
        if (issuer != null) this.issuer = issuer;
        if (thisUpdate != null) this.thisUpdate = thisUpdate;
        if (nextUpdate != null) this.nextUpdate = nextUpdate;
        if (revokedCertificates != null) this.revokedCertificates = revokedCertificates;
        if (extensions != null) this.extensions = extensions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tbsCertificateList(raw, version, signature, issuer, thisUpdate, nextUpdate, revokedCertificates, extensions);
    }
}
