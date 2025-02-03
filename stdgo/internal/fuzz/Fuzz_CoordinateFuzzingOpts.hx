package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.CoordinateFuzzingOpts_static_extension) abstract CoordinateFuzzingOpts(stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts) from stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts to stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts {
    public var log(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_log():stdgo._internal.io.Io_Writer.Writer return this.log;
    function set_log(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.log = v;
        return v;
    }
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public var minimizeTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_minimizeTimeout():stdgo._internal.time.Time_Duration.Duration return this.minimizeTimeout;
    function set_minimizeTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.minimizeTimeout = v;
        return v;
    }
    public var minimizeLimit(get, set) : haxe.Int64;
    function get_minimizeLimit():haxe.Int64 return this.minimizeLimit;
    function set_minimizeLimit(v:haxe.Int64):haxe.Int64 {
        this.minimizeLimit = (v : stdgo.GoInt64);
        return v;
    }
    public var parallel(get, set) : StdTypes.Int;
    function get_parallel():StdTypes.Int return this.parallel;
    function set_parallel(v:StdTypes.Int):StdTypes.Int {
        this.parallel = (v : stdgo.GoInt);
        return v;
    }
    public var seed(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get_seed():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this.seed) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set_seed(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this.seed = ([for (i in v) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var types(get, set) : Array<stdgo._internal.reflect.Reflect_Type_.Type_>;
    function get_types():Array<stdgo._internal.reflect.Reflect_Type_.Type_> return [for (i in this.types) i];
    function set_types(v:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):Array<stdgo._internal.reflect.Reflect_Type_.Type_> {
        this.types = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return v;
    }
    public var corpusDir(get, set) : String;
    function get_corpusDir():String return this.corpusDir;
    function set_corpusDir(v:String):String {
        this.corpusDir = (v : stdgo.GoString);
        return v;
    }
    public var cacheDir(get, set) : String;
    function get_cacheDir():String return this.cacheDir;
    function set_cacheDir(v:String):String {
        this.cacheDir = (v : stdgo.GoString);
        return v;
    }
    public function new(?log:stdgo._internal.io.Io_Writer.Writer, ?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:haxe.Int64, ?minimizeTimeout:stdgo._internal.time.Time_Duration.Duration, ?minimizeLimit:haxe.Int64, ?parallel:StdTypes.Int, ?seed:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>, ?corpusDir:String, ?cacheDir:String) this = new stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts(log, timeout, (limit : stdgo.GoInt64), minimizeTimeout, (minimizeLimit : stdgo.GoInt64), (parallel : stdgo.GoInt), ([for (i in seed) {
        final obj = i;
        { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), ([for (i in types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>), (corpusDir : stdgo.GoString), (cacheDir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
