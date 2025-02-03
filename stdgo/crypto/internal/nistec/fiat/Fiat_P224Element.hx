package stdgo.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P224Element_static_extension) abstract P224Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element {
    public var _x(get, set) : T_p224MontgomeryDomainFieldElement;
    function get__x():T_p224MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p224MontgomeryDomainFieldElement):T_p224MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p224MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
