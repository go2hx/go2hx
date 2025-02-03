package stdgo.log.slog.internal.benchmarks;
@:structInit @:using(stdgo.log.slog.internal.benchmarks.Benchmarks.T_asyncHandler_static_extension) abstract T_asyncHandler(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler) from stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler to stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler {
    public var _ringBuffer(get, set) : haxe.ds.Vector<stdgo._internal.log.slog.Slog_Record.Record>;
    function get__ringBuffer():haxe.ds.Vector<stdgo._internal.log.slog.Slog_Record.Record> return haxe.ds.Vector.fromArrayCopy([for (i in this._ringBuffer) i]);
    function set__ringBuffer(v:haxe.ds.Vector<stdgo._internal.log.slog.Slog_Record.Record>):haxe.ds.Vector<stdgo._internal.log.slog.Slog_Record.Record> {
        this._ringBuffer = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_Record.Record>);
        return v;
    }
    public var _next(get, set) : StdTypes.Int;
    function get__next():StdTypes.Int return this._next;
    function set__next(v:StdTypes.Int):StdTypes.Int {
        this._next = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_ringBuffer:haxe.ds.Vector<stdgo._internal.log.slog.Slog_Record.Record>, ?_next:StdTypes.Int) this = new stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler(([for (i in _ringBuffer) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_Record.Record>), (_next : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
