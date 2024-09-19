package _internal.vendor.golang_dot_org.x.crypto.chacha20;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher_static_extension.Cipher_static_extension) class Cipher {
    public var _key : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt32)]);
    public var _counter : stdgo.GoUInt32 = 0;
    public var _nonce : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt32)]);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
    public var _len : stdgo.GoInt = 0;
    public var _overflow : Bool = false;
    public var _precompDone : Bool = false;
    public var _p1 : stdgo.GoUInt32 = 0;
    public var _p5 : stdgo.GoUInt32 = 0;
    public var _p9 : stdgo.GoUInt32 = 0;
    public var _p13 : stdgo.GoUInt32 = 0;
    public var _p2 : stdgo.GoUInt32 = 0;
    public var _p6 : stdgo.GoUInt32 = 0;
    public var _p10 : stdgo.GoUInt32 = 0;
    public var _p14 : stdgo.GoUInt32 = 0;
    public var _p3 : stdgo.GoUInt32 = 0;
    public var _p7 : stdgo.GoUInt32 = 0;
    public var _p11 : stdgo.GoUInt32 = 0;
    public var _p15 : stdgo.GoUInt32 = 0;
    public function new(?_key:stdgo.GoArray<stdgo.GoUInt32>, ?_counter:stdgo.GoUInt32, ?_nonce:stdgo.GoArray<stdgo.GoUInt32>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_len:stdgo.GoInt, ?_overflow:Bool, ?_precompDone:Bool, ?_p1:stdgo.GoUInt32, ?_p5:stdgo.GoUInt32, ?_p9:stdgo.GoUInt32, ?_p13:stdgo.GoUInt32, ?_p2:stdgo.GoUInt32, ?_p6:stdgo.GoUInt32, ?_p10:stdgo.GoUInt32, ?_p14:stdgo.GoUInt32, ?_p3:stdgo.GoUInt32, ?_p7:stdgo.GoUInt32, ?_p11:stdgo.GoUInt32, ?_p15:stdgo.GoUInt32) {
        if (_key != null) this._key = _key;
        if (_counter != null) this._counter = _counter;
        if (_nonce != null) this._nonce = _nonce;
        if (_buf != null) this._buf = _buf;
        if (_len != null) this._len = _len;
        if (_overflow != null) this._overflow = _overflow;
        if (_precompDone != null) this._precompDone = _precompDone;
        if (_p1 != null) this._p1 = _p1;
        if (_p5 != null) this._p5 = _p5;
        if (_p9 != null) this._p9 = _p9;
        if (_p13 != null) this._p13 = _p13;
        if (_p2 != null) this._p2 = _p2;
        if (_p6 != null) this._p6 = _p6;
        if (_p10 != null) this._p10 = _p10;
        if (_p14 != null) this._p14 = _p14;
        if (_p3 != null) this._p3 = _p3;
        if (_p7 != null) this._p7 = _p7;
        if (_p11 != null) this._p11 = _p11;
        if (_p15 != null) this._p15 = _p15;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cipher(
_key,
_counter,
_nonce,
_buf,
_len,
_overflow,
_precompDone,
_p1,
_p5,
_p9,
_p13,
_p2,
_p6,
_p10,
_p14,
_p3,
_p7,
_p11,
_p15);
    }
}
