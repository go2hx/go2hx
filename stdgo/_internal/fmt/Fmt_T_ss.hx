package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension) class T_ss {
    public var _rs : stdgo._internal.io.Io_RuneScanner.RuneScanner = (null : stdgo._internal.io.Io_RuneScanner.RuneScanner);
    public var _buf : stdgo._internal.fmt.Fmt_T_buffer.T_buffer = new stdgo._internal.fmt.Fmt_T_buffer.T_buffer(0, 0);
    public var _count : stdgo.GoInt = 0;
    public var _atEOF : Bool = false;
    @:embedded
    public var _ssave : stdgo._internal.fmt.Fmt_T_ssave.T_ssave = ({} : stdgo._internal.fmt.Fmt_T_ssave.T_ssave);
    public function new(?_rs:stdgo._internal.io.Io_RuneScanner.RuneScanner, ?_buf:stdgo._internal.fmt.Fmt_T_buffer.T_buffer, ?_count:stdgo.GoInt, ?_atEOF:Bool, ?_ssave:stdgo._internal.fmt.Fmt_T_ssave.T_ssave) {
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
