package stdgo._internal.log.slog.internal.benchmarks;
@:structInit @:using(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension) class T_fastTextHandler {
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fastTextHandler(_w);
    }
}
