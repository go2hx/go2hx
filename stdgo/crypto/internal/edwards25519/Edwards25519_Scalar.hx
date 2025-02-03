package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.Scalar_static_extension) abstract Scalar(stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar to stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar {
    public var _s(get, set) : T_fiatScalarMontgomeryDomainFieldElement;
    function get__s():T_fiatScalarMontgomeryDomainFieldElement return this._s;
    function set__s(v:T_fiatScalarMontgomeryDomainFieldElement):T_fiatScalarMontgomeryDomainFieldElement {
        this._s = v;
        return v;
    }
    public function new(?_s:T_fiatScalarMontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar(_s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
