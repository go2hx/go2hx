package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_source_static_extension.Source_static_extension) class Source {
    @:tag("`json:\"function\"`")
    public var function_ : stdgo.GoString = "";
    @:tag("`json:\"file\"`")
    public var file : stdgo.GoString = "";
    @:tag("`json:\"line\"`")
    public var line : stdgo.GoInt = 0;
    public function new(?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:stdgo.GoInt) {
        if (function_ != null) this.function_ = function_;
        if (file != null) this.file = file;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Source(function_, file, line);
    }
}
