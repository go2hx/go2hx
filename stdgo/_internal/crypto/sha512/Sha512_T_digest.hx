package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension) class T_digest {
    public var _h : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(8, 8).__setNumber64__();
    public var _x : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128).__setNumber32__();
    public var _nx : stdgo.GoInt = 0;
    public var _len : stdgo.GoUInt64 = 0;
    public var _function : stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
    public function new(?_h:stdgo.GoArray<stdgo.GoUInt64>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64, ?_function:stdgo._internal.crypto.Crypto_Hash.Hash) {
        if (_h != null) this._h = _h;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
        if (_function != null) this._function = _function;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len, _function);
    }
}
