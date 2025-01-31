package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_T_timeoutReader_static_extension.T_timeoutReader_static_extension) class T_timeoutReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _count : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_count:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutReader(_r, _count);
    }
}
