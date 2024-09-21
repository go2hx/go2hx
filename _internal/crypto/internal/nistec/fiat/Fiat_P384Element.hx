package _internal.crypto.internal.nistec.fiat;
@:structInit @:using(_internal.crypto.internal.nistec.fiat.Fiat_P384Element_static_extension.P384Element_static_extension) class P384Element {
    public var _x : _internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt64)]);
    public function new(?_x:_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P384Element(_x);
    }
}
