package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_T_writeLogger_static_extension.T_writeLogger_static_extension) class T_writeLogger {
    public var _prefix : stdgo.GoString = "";
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?_prefix:stdgo.GoString, ?_w:stdgo._internal.io.Io_Writer.Writer) {
        if (_prefix != null) this._prefix = _prefix;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeLogger(_prefix, _w);
    }
}
