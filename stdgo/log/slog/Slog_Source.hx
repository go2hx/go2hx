package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.Source_static_extension) abstract Source(stdgo._internal.log.slog.Slog_Source.Source) from stdgo._internal.log.slog.Slog_Source.Source to stdgo._internal.log.slog.Slog_Source.Source {
    public var function_(get, set) : String;
    function get_function_():String return this.function_;
    function set_function_(v:String):String {
        this.function_ = (v : stdgo.GoString);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?function_:String, ?file:String, ?line:StdTypes.Int) this = new stdgo._internal.log.slog.Slog_Source.Source((function_ : stdgo.GoString), (file : stdgo.GoString), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
