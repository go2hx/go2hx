package _internal.internal.zstd;
@:structInit @:using(_internal.internal.zstd.Zstd_T_xxhash64_static_extension.T_xxhash64_static_extension) class T_xxhash64 {
    public var _len : stdgo.GoUInt64 = 0;
    public var _v : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
    public var _cnt : stdgo.GoInt = 0;
    public function new(?_len:stdgo.GoUInt64, ?_v:stdgo.GoArray<stdgo.GoUInt64>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_cnt:stdgo.GoInt) {
        if (_len != null) this._len = _len;
        if (_v != null) this._v = _v;
        if (_buf != null) this._buf = _buf;
        if (_cnt != null) this._cnt = _cnt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_xxhash64(_len, _v, _buf, _cnt);
    }
}