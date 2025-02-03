package stdgo.crypto.x509.pkix;
class CertificateList_static_extension {
    static public function hasExpired(_certList:CertificateList, _now:stdgo._internal.time.Time_Time.Time):Bool {
        final _certList = (_certList : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>);
        return stdgo._internal.crypto.x509.pkix.Pkix_CertificateList_static_extension.CertificateList_static_extension.hasExpired(_certList, _now);
    }
}
