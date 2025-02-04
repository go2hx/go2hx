package stdgo._internal.archive.zip;
@:structInit @:using(stdgo._internal.archive.zip.Zip_t_countwriter_static_extension.T_countWriter_static_extension) class T_countWriter {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _count : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_count:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_countWriter(_w, _count);
    }
}
