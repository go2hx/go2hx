package stdgo._internal.crypto.x509.pkix;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.CertificateList_asInterface) class CertificateList_static_extension {
    @:keep
    static public function hasExpired( _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>, _now:stdgo._internal.time.Time_Time.Time):Bool {
        @:recv var _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList> = _certList;
        return !_now.before(_certList.tbscertList.nextUpdate?.__copy__());
    }
}
