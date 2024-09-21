package _internal.crypto.internal.nistec.fiat;
@:structInit @:using(_internal.crypto.internal.nistec.fiat.Fiat_P256Element_static_extension.P256Element_static_extension) class P256Element {
    public var _x : _internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public function new(?_x:_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P256Element(_x);
    }
}
