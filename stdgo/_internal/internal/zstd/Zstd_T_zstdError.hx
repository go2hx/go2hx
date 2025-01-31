package stdgo._internal.internal.zstd;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.internal.zstd.Zstd_T_zstdError_static_extension.T_zstdError_static_extension) class T_zstdError {
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
