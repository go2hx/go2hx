package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_distributionPoint {
    @:tag("`asn1:\"optional,tag:0\"`")
    public var distributionPoint : stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName = ({} : stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName);
    @:tag("`asn1:\"optional,tag:1\"`")
    public var reason : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    @:tag("`asn1:\"optional,tag:2\"`")
    public var crlissuer : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
    public function new(?distributionPoint:stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName, ?reason:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?crlissuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) {
        if (distributionPoint != null) this.distributionPoint = distributionPoint;
        if (reason != null) this.reason = reason;
        if (crlissuer != null) this.crlissuer = crlissuer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_distributionPoint(distributionPoint, reason, crlissuer);
    }
}
