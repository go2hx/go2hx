package stdgo.internal.benchmarks;
@:structInit @:using(stdgo.log.slog.internal.benchmarks.Benchmarks.T_fastTextHandler_static_extension) @:dox(hide) abstract T_fastTextHandler(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler) from stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler to stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.internal.benchmarks.Benchmarks.T_asyncHandler_static_extension) @:dox(hide) abstract T_asyncHandler(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler) from stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler to stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler {
    public var _ringBuffer(get, set) : haxe.ds.Vector<stdgo._internal.log.slog.Slog_record.Record>;
    function get__ringBuffer():haxe.ds.Vector<stdgo._internal.log.slog.Slog_record.Record> return haxe.ds.Vector.fromArrayCopy([for (i in this._ringBuffer) i]);
    function set__ringBuffer(v:haxe.ds.Vector<stdgo._internal.log.slog.Slog_record.Record>):haxe.ds.Vector<stdgo._internal.log.slog.Slog_record.Record> {
        this._ringBuffer = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_record.Record>);
        return v;
    }
    public var _next(get, set) : StdTypes.Int;
    function get__next():StdTypes.Int return this._next;
    function set__next(v:StdTypes.Int):StdTypes.Int {
        this._next = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_ringBuffer:haxe.ds.Vector<stdgo._internal.log.slog.Slog_record.Record>, ?_next:StdTypes.Int) this = new stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler(([for (i in _ringBuffer) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_record.Record>), (_next : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.internal.benchmarks.Benchmarks.T_disabledHandler_static_extension) @:dox(hide) abstract T_disabledHandler(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler) from stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler to stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler {
    public function new() this = new stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_fastTextHandlerPointer = stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandlerpointer.T_fastTextHandlerPointer;
@:dox(hide) class T_fastTextHandler_static_extension {
    static public function withGroup(_:T_fastTextHandler, _0:String):stdgo._internal.log.slog.Slog_handler.Handler {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>);
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler_static_extension.T_fastTextHandler_static_extension.withGroup(_, _0);
    }
    static public function withAttrs(_h:T_fastTextHandler, _0:Array<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>);
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler_static_extension.T_fastTextHandler_static_extension.withAttrs(_h, _0);
    }
    static public function _appendTime(_h:T_fastTextHandler, _buf:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, _t:stdgo._internal.time.Time_time.Time):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler_static_extension.T_fastTextHandler_static_extension._appendTime(_h, _buf, _t);
    }
    static public function _appendValue(_h:T_fastTextHandler, _buf:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, _v:stdgo._internal.log.slog.Slog_value.Value):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler_static_extension.T_fastTextHandler_static_extension._appendValue(_h, _buf, _v);
    }
    static public function handle(_h:T_fastTextHandler, __0:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler_static_extension.T_fastTextHandler_static_extension.handle(_h, __0, _r);
    }
    static public function enabled(_h:T_fastTextHandler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler_static_extension.T_fastTextHandler_static_extension.enabled(_h, _0, _1);
    }
}
@:dox(hide) typedef T_asyncHandlerPointer = stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandlerpointer.T_asyncHandlerPointer;
@:dox(hide) class T_asyncHandler_static_extension {
    static public function withGroup(_:T_asyncHandler, _0:String):stdgo._internal.log.slog.Slog_handler.Handler {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>);
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler_static_extension.T_asyncHandler_static_extension.withGroup(_, _0);
    }
    static public function withAttrs(_:T_asyncHandler, _0:Array<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>);
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler_static_extension.T_asyncHandler_static_extension.withAttrs(_, _0);
    }
    static public function handle(_h:T_asyncHandler, __0:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler_static_extension.T_asyncHandler_static_extension.handle(_h, __0, _r);
    }
    static public function enabled(_:T_asyncHandler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler_static_extension.T_asyncHandler_static_extension.enabled(_, _0, _1);
    }
}
@:dox(hide) typedef T_disabledHandlerPointer = stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandlerpointer.T_disabledHandlerPointer;
@:dox(hide) class T_disabledHandler_static_extension {
    static public function withGroup(_:T_disabledHandler, _0:String):stdgo._internal.log.slog.Slog_handler.Handler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler_static_extension.T_disabledHandler_static_extension.withGroup(_, _0);
    }
    static public function withAttrs(_:T_disabledHandler, _0:Array<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler_static_extension.T_disabledHandler_static_extension.withAttrs(_, _0);
    }
    static public function handle(_:T_disabledHandler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler_static_extension.T_disabledHandler_static_extension.handle(_, _0, _1);
    }
    static public function enabled(_:T_disabledHandler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool {
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler_static_extension.T_disabledHandler_static_extension.enabled(_, _0, _1);
    }
}
/**
    * Package benchmarks contains benchmarks for slog.
    * 
    * These benchmarks are loosely based on github.com/uber-go/zap/benchmarks.
    * They have the following desirable properties:
    * 
    *   - They test a complete log event, from the user's call to its return.
    * 
    *   - The benchmarked code is run concurrently in multiple goroutines, to
    *     better simulate a real server (the most common environment for structured
    *     logs).
    * 
    *   - Some handlers are optimistic versions of real handlers, doing real-world
    *     tasks as fast as possible (and sometimes faster, in that an
    *     implementation may not be concurrency-safe). This gives us an upper bound
    *     on handler performance, so we can evaluate the (handler-independent) core
    *     activity of the package in an end-to-end context without concern that a
    *     slow handler implementation is skewing the results.
    * 
    *   - We also test the built-in handlers, for comparison.
**/
class Benchmarks {

}
