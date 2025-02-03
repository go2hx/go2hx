package stdgo.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P256Element_static_extension) abstract P256Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element {
    public var _x(get, set) : T_p256MontgomeryDomainFieldElement;
    function get__x():T_p256MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p256MontgomeryDomainFieldElement):T_p256MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p256MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
