package stdgo._internal.crypto.x509;
@:structInit class T_distributionPointName {
    @:tag("`asn1:\"optional,tag:0\"`")
    public var fullName : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
    @:tag("`asn1:\"optional,tag:1\"`")
    public var relativeName : stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
    public function new(?fullName:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>, ?relativeName:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence) {
        if (fullName != null) this.fullName = fullName;
        if (relativeName != null) this.relativeName = relativeName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_distributionPointName(fullName, relativeName);
    }
}
