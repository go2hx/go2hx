package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.RevokedCertificate_static_extension) abstract RevokedCertificate(stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate) from stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate to stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate {
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_Int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var revocationTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_revocationTime():stdgo._internal.time.Time_Time.Time return this.revocationTime;
    function set_revocationTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.revocationTime = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?revocationTime:stdgo._internal.time.Time_Time.Time, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate((serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), revocationTime, ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
