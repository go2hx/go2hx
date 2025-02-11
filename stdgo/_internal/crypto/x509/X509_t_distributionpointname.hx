package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_distributionpointname_static_extension.T_distributionPointName_static_extension) class T_distributionPointName {
    @:tag("`asn1:\"optional,tag:0\"`")
    public var fullName : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
    @:tag("`asn1:\"optional,tag:1\"`")
    public var relativeName : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
    public function new(?fullName:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>, ?relativeName:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence) {
        if (fullName != null) this.fullName = fullName;
        if (relativeName != null) this.relativeName = relativeName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_distributionPointName(fullName, relativeName);
    }
}
