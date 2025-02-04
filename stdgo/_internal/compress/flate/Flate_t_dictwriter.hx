package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_dictwriter_static_extension.T_dictWriter_static_extension) class T_dictWriter {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?_w:stdgo._internal.io.Io_writer.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dictWriter(_w);
    }
}
