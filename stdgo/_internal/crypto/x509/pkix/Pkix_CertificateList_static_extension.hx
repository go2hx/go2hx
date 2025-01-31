package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.CertificateList_asInterface) class CertificateList_static_extension {
    @:keep
    @:tdfield
    static public function hasExpired( _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>, _now:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList> = _certList;
        return !_now.before((@:checkr _certList ?? throw "null pointer dereference").tBSCertList.nextUpdate?.__copy__());
    }
}
