package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate_static_extension.RevokedCertificate_static_extension) class RevokedCertificate {
    public var serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var revocationTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    @:tag("`asn1:\"optional\"`")
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public function new(?serialNumber:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?revocationTime:stdgo._internal.time.Time_Time.Time, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>) {
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (revocationTime != null) this.revocationTime = revocationTime;
        if (extensions != null) this.extensions = extensions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RevokedCertificate(serialNumber, revocationTime, extensions);
    }
}
