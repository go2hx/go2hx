package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_T_dataErrReader_static_extension.T_dataErrReader_static_extension) class T_dataErrReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _unread : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_unread:stdgo.Slice<stdgo.GoUInt8>, ?_data:stdgo.Slice<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_unread != null) this._unread = _unread;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dataErrReader(_r, _unread, _data);
    }
}
