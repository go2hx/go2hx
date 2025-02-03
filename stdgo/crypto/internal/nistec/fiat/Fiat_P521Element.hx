package stdgo.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P521Element_static_extension) abstract P521Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element {
    public var _x(get, set) : T_p521MontgomeryDomainFieldElement;
    function get__x():T_p521MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p521MontgomeryDomainFieldElement):T_p521MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p521MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
