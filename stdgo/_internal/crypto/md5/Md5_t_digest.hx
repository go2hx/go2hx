package stdgo._internal.crypto.md5;
@:structInit @:using(stdgo._internal.crypto.md5.Md5_t_digest_static_extension.T_digest_static_extension) class T_digest {
    public var _s : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(4, 4).__setNumber32__();
    public var _x : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public var _nx : stdgo.GoInt = 0;
    public var _len : stdgo.GoUInt64 = 0;
    public function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64) {
        if (_s != null) this._s = _s;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_s, _x, _nx, _len);
    }
}
