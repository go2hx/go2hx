package stdgo._internal.crypto.rc4;
@:structInit @:using(stdgo._internal.crypto.rc4.Rc4_cipher_static_extension.Cipher_static_extension) class Cipher {
    public var _s : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(256, 256).__setNumber32__();
    public var _i : stdgo.GoUInt8 = 0;
    public var _j : stdgo.GoUInt8 = 0;
    public function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_i:stdgo.GoUInt8, ?_j:stdgo.GoUInt8) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cipher(_s, _i, _j);
    }
}
