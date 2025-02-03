package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_distributionPointName_static_extension) abstract T_distributionPointName(stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName) from stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName to stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName {
    public var fullName(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>;
    function get_fullName():Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> return [for (i in this.fullName) i];
    function set_fullName(v:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> {
        this.fullName = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        return v;
    }
    public var relativeName(get, set) : RDNSequence;
    function get_relativeName():RDNSequence return this.relativeName;
    function set_relativeName(v:RDNSequence):RDNSequence {
        this.relativeName = v;
        return v;
    }
    public function new(?fullName:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>, ?relativeName:RDNSequence) this = new stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName(([for (i in fullName) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>), relativeName);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
