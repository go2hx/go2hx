package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_regfilewriter_static_extension.T_regFileWriter_static_extension) class T_regFileWriter {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _nb : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_nb:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_nb != null) this._nb = _nb;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_regFileWriter(_w, _nb);
    }
}
