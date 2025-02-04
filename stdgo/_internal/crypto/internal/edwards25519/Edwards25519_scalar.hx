package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension) class Scalar {
    public var _s : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public function new(?_s:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scalar(_s);
    }
}
