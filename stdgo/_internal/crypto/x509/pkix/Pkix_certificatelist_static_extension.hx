package stdgo._internal.crypto.x509.pkix;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.CertificateList_asInterface) class CertificateList_static_extension {
    @:keep
    @:tdfield
    static public function hasExpired( _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>, _now:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList> = _certList;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L296"
        return !_now.before((@:checkr _certList ?? throw "null pointer dereference").tBSCertList.nextUpdate?.__copy__());
    }
}
