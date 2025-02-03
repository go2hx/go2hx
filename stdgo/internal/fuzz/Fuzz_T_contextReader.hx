package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_contextReader_static_extension) abstract T_contextReader(stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader) from stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader to stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader {
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_ctx:stdgo._internal.context.Context_Context.Context, ?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader(_ctx, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
