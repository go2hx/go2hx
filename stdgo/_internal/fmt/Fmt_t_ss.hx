package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension) class T_ss {
    public var _rs : stdgo._internal.io.Io_runescanner.RuneScanner = (null : stdgo._internal.io.Io_runescanner.RuneScanner);
    public var _buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer = (new stdgo._internal.fmt.Fmt_t_buffer.T_buffer(0, 0) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
    public var _count : stdgo.GoInt = 0;
    public var _atEOF : Bool = false;
    @:embedded
    public var _ssave : stdgo._internal.fmt.Fmt_t_ssave.T_ssave = ({} : stdgo._internal.fmt.Fmt_t_ssave.T_ssave);
    public function new(?_rs:stdgo._internal.io.Io_runescanner.RuneScanner, ?_buf:stdgo._internal.fmt.Fmt_t_buffer.T_buffer, ?_count:stdgo.GoInt, ?_atEOF:Bool, ?_ssave:stdgo._internal.fmt.Fmt_t_ssave.T_ssave) {
        if (_rs != null) this._rs = _rs;
        if (_buf != null) this._buf = _buf;
        if (_count != null) this._count = _count;
        if (_atEOF != null) this._atEOF = _atEOF;
        if (_ssave != null) this._ssave = _ssave;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ss(_rs, _buf, _count, _atEOF, _ssave);
    }
}
