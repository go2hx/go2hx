package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_contextreader_static_extension.T_contextReader_static_extension) class T_contextReader {
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?_ctx:stdgo._internal.context.Context_context.Context, ?_r:stdgo._internal.io.Io_reader.Reader) {
        if (_ctx != null) this._ctx = _ctx;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_contextReader(_ctx, _r);
    }
}
