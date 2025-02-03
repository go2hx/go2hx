package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_rsaKeyAgreement_static_extension) abstract T_rsaKeyAgreement(stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement) from stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement to stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement {
    public function new() this = new stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
