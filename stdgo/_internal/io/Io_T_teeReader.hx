package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_T_teeReader_static_extension.T_teeReader_static_extension) class T_teeReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_w:stdgo._internal.io.Io_Writer.Writer) {
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_teeReader(_r, _w);
    }
}
