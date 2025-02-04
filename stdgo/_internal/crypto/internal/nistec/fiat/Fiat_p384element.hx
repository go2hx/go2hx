package stdgo._internal.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension) class P384Element {
    public var _x : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt64)]);
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P384Element(_x);
    }
}
