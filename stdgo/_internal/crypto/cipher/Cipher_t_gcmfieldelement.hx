package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement_static_extension.T_gcmFieldElement_static_extension) class T_gcmFieldElement {
    public var _low : stdgo.GoUInt64 = 0;
    public var _high : stdgo.GoUInt64 = 0;
    public function new(?_low:stdgo.GoUInt64, ?_high:stdgo.GoUInt64) {
        if (_low != null) this._low = _low;
        if (_high != null) this._high = _high;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcmFieldElement(_low, _high);
    }
}
