package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_RevocationListEntry_static_extension.RevocationListEntry_static_extension) class RevocationListEntry {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var revocationTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var reasonCode : stdgo.GoInt = 0;
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?serialNumber:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?revocationTime:stdgo._internal.time.Time_Time.Time, ?reasonCode:stdgo.GoInt, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>) {
        if (raw != null) this.raw = raw;
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (revocationTime != null) this.revocationTime = revocationTime;
        if (reasonCode != null) this.reasonCode = reasonCode;
        if (extensions != null) this.extensions = extensions;
        if (extraExtensions != null) this.extraExtensions = extraExtensions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RevocationListEntry(raw, serialNumber, revocationTime, reasonCode, extensions, extraExtensions);
    }
}
