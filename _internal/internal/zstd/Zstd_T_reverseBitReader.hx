package _internal.internal.zstd;
@:structInit @:using(_internal.internal.zstd.Zstd_T_reverseBitReader_static_extension.T_reverseBitReader_static_extension) class T_reverseBitReader {
    public var _r : stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = (null : stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>);
    public var _data : _internal.internal.zstd.Zstd_T_block.T_block = new _internal.internal.zstd.Zstd_T_block.T_block(0, 0);
    public var _off : stdgo.GoUInt32 = 0;
    public var _start : stdgo.GoUInt32 = 0;
    public var _bits : stdgo.GoUInt32 = 0;
    public var _cnt : stdgo.GoUInt32 = 0;
    public function new(?_r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, ?_data:_internal.internal.zstd.Zstd_T_block.T_block, ?_off:stdgo.GoUInt32, ?_start:stdgo.GoUInt32, ?_bits:stdgo.GoUInt32, ?_cnt:stdgo.GoUInt32) {
        if (_r != null) this._r = _r;
        if (_data != null) this._data = _data;
        if (_off != null) this._off = _off;
        if (_start != null) this._start = _start;
        if (_bits != null) this._bits = _bits;
        if (_cnt != null) this._cnt = _cnt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reverseBitReader(_r, _data, _off, _start, _bits, _cnt);
    }
}