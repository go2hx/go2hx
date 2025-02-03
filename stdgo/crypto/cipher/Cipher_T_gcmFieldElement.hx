package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_gcmFieldElement_static_extension) abstract T_gcmFieldElement(stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement) from stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement to stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement {
    public var _low(get, set) : haxe.UInt64;
    function get__low():haxe.UInt64 return this._low;
    function set__low(v:haxe.UInt64):haxe.UInt64 {
        this._low = (v : stdgo.GoUInt64);
        return v;
    }
    public var _high(get, set) : haxe.UInt64;
    function get__high():haxe.UInt64 return this._high;
    function set__high(v:haxe.UInt64):haxe.UInt64 {
        this._high = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_low:haxe.UInt64, ?_high:haxe.UInt64) this = new stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement((_low : stdgo.GoUInt64), (_high : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
