package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_zstdError_static_extension) abstract T_zstdError(stdgo._internal.internal.zstd.Zstd_T_zstdError.T_zstdError) from stdgo._internal.internal.zstd.Zstd_T_zstdError.T_zstdError to stdgo._internal.internal.zstd.Zstd_T_zstdError.T_zstdError {
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_offset:haxe.Int64, ?_err:stdgo.Error) this = new stdgo._internal.internal.zstd.Zstd_T_zstdError.T_zstdError((_offset : stdgo.GoInt64), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
