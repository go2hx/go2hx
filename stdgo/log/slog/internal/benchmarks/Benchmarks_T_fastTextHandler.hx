package stdgo.log.slog.internal.benchmarks;
@:structInit @:using(stdgo.log.slog.internal.benchmarks.Benchmarks.T_fastTextHandler_static_extension) abstract T_fastTextHandler(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler) from stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler to stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
