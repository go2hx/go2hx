package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_distributionPoint_static_extension) abstract T_distributionPoint(stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint) from stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint to stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint {
    public var distributionPoint(get, set) : T_distributionPointName;
    function get_distributionPoint():T_distributionPointName return this.distributionPoint;
    function set_distributionPoint(v:T_distributionPointName):T_distributionPointName {
        this.distributionPoint = v;
        return v;
    }
    public var reason(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_reason():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.reason;
    function set_reason(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.reason = v;
        return v;
    }
    public var cRLIssuer(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_cRLIssuer():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.cRLIssuer;
    function set_cRLIssuer(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.cRLIssuer = v;
        return v;
    }
    public function new(?distributionPoint:T_distributionPointName, ?reason:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?cRLIssuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) this = new stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint(distributionPoint, reason, cRLIssuer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
