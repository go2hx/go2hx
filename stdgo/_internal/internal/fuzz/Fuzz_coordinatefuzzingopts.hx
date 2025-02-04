package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts_static_extension.CoordinateFuzzingOpts_static_extension) class CoordinateFuzzingOpts {
    public var log : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var limit : stdgo.GoInt64 = 0;
    public var minimizeTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var minimizeLimit : stdgo.GoInt64 = 0;
    public var parallel : stdgo.GoInt = 0;
    public var seed : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }> = (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
    public var types : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
    public var corpusDir : stdgo.GoString = "";
    public var cacheDir : stdgo.GoString = "";
    public function new(?log:stdgo._internal.io.Io_writer.Writer, ?timeout:stdgo._internal.time.Time_duration.Duration, ?limit:stdgo.GoInt64, ?minimizeTimeout:stdgo._internal.time.Time_duration.Duration, ?minimizeLimit:stdgo.GoInt64, ?parallel:stdgo.GoInt, ?seed:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, ?types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>, ?corpusDir:stdgo.GoString, ?cacheDir:stdgo.GoString) {
        if (log != null) this.log = log;
        if (timeout != null) this.timeout = timeout;
        if (limit != null) this.limit = limit;
        if (minimizeTimeout != null) this.minimizeTimeout = minimizeTimeout;
        if (minimizeLimit != null) this.minimizeLimit = minimizeLimit;
        if (parallel != null) this.parallel = parallel;
        if (seed != null) this.seed = seed;
        if (types != null) this.types = types;
        if (corpusDir != null) this.corpusDir = corpusDir;
        if (cacheDir != null) this.cacheDir = cacheDir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoordinateFuzzingOpts(log, timeout, limit, minimizeTimeout, minimizeLimit, parallel, seed, types, corpusDir, cacheDir);
    }
}
