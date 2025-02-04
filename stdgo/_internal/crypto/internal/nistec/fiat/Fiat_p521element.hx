package stdgo._internal.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension) class P521Element {
    public var _x : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement(9, 9, ...[for (i in 0 ... 9) (0 : stdgo.GoUInt64)]);
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P521Element(_x);
    }
}
