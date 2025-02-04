package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate_static_extension.RevokedCertificate_static_extension) class RevokedCertificate {
    public var serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var revocationTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    @:tag("`asn1:\"optional\"`")
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public function new(?serialNumber:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?revocationTime:stdgo._internal.time.Time_time.Time, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) {
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (revocationTime != null) this.revocationTime = revocationTime;
        if (extensions != null) this.extensions = extensions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RevokedCertificate(serialNumber, revocationTime, extensions);
    }
}
