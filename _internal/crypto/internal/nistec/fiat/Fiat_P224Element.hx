package _internal.crypto.internal.nistec.fiat;
@:structInit @:using(_internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension) class P224Element {
    public var _x : _internal.crypto.internal.nistec.fiat.Fiat_T_p224MontgomeryDomainFieldElement.T_p224MontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p224MontgomeryDomainFieldElement.T_p224MontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public function new(?_x:_internal.crypto.internal.nistec.fiat.Fiat_T_p224MontgomeryDomainFieldElement.T_p224MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P224Element(_x);
    }
}
