package stdgo._internal.internal.zstd;
@:structInit @:using(stdgo._internal.internal.zstd.Zstd_t_zstderror_static_extension.T_zstdError_static_extension) class T_zstdError {
    public var _offset : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_offset:stdgo.GoInt64, ?_err:stdgo.Error) {
        if (_offset != null) this._offset = _offset;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zstdError(_offset, _err);
    }
}
