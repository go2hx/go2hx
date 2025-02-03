package stdgo.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P384Element_static_extension) abstract P384Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element {
    public var _x(get, set) : T_p384MontgomeryDomainFieldElement;
    function get__x():T_p384MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p384MontgomeryDomainFieldElement):T_p384MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p384MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
