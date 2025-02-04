package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_t_teereader_static_extension.T_teeReader_static_extension) class T_teeReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_w:stdgo._internal.io.Io_writer.Writer) {
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_teeReader(_r, _w);
    }
}
